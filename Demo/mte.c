#include "mte.h"

uintptr_t set_specific_tag(uintptr_t ptr, uint8_t tag)
{
    // Clear the existing tag and apply the new one
    return (ptr & ~(0xFUL << 56)) | ((uintptr_t)tag << 56);
}

/// @brief Generates a tagged pointer with the specified tag
/// @param ptr The pointer we want to tag
/// @param tag The tag to tag the pointer with
/// @param size How many bytes to tag
void *mte_set_tag(void *ptr, uint8_t tag, size_t size)
{
    uintptr_t base_addr = set_specific_tag((uintptr_t)ptr, tag);
    size_t mte_granule_size = 16;

    // Tag each block in the memory region
    for (size_t offset = 0; offset < size; offset += mte_granule_size)
    {
        uintptr_t current_addr = base_addr + offset;
        asm volatile("stg %0, [%0]" : : "r"(current_addr) : "memory");
    }

    return (void *)base_addr;
}

void *mte_alloc(size_t size)
{
    void *ptr = mmap(NULL, size, PROT_READ | PROT_WRITE | PROT_MTE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (ptr == MAP_FAILED)
    {
        perror("mmap failed");
        return NULL;
    }
    return ptr;
}

/// @brief Allocate memory and tag with the supplied tag
/// @param size
/// @param tag The color we want to tag the allocated memory with. See
/// @return
void *mte_malloc(size_t size, uint8_t tag)
{
    void *ptr = mte_alloc(size);
    printf("Tagging %d bytes with %x\n", size, tag);
    if (ptr)
    {
        ptr = mte_set_tag(ptr, tag, size);
        printf("Tagged ptr %p\n", ptr);

        return ptr;
    }

    return NULL;
}

void mte_free(void *ptr, size_t size)
{
    if (ptr != NULL)
    {

        // this will crush any subsequen access to this mem location by other pointers with the previous tag.
        ptr = mte_set_tag(ptr, NO, size);

        // Now free the memory
        free(ptr);
    }
}

uint8_t get_mte_tag(void *ptr)
{
    uintptr_t tagged_addr = (uintptr_t)ptr;
    uint64_t tag;
    asm volatile("ldg %0, [%1]"
                 : "=r"(tag)
                 : "r"(tagged_addr)
                 : "memory");
    return tag;
}

void *allocate_global(size_t size)
{
    void *ptr = malloc(size);
    if (ptr == NULL)
    {
        fprintf(stderr, "Memory allocation failed\n");
        return NULL;
    }
    return ptr;
}

void cross_compartment(void *ptr, size_t size, uint8_t current_tag, uint8_t target_tag, function_ptr_t func)
{

    if (current_tag == target_tag)
    {
        func(ptr);
    }
    else
    {
        // Retag the pointer with the target compartment's tag
        ptr = mte_set_tag(ptr, target_tag, size);

        // Call the function with the retagged pointer
        func(ptr);

        // Optionally, restore the original tag
        ptr = mte_set_tag(ptr, current_tag, size);
    }
}
