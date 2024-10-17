#ifndef MTE_H
#define MTE_H

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <setjmp.h>
#include <sys/auxv.h>
#include <sys/mman.h>
#include <sys/prctl.h>

typedef void (*function_ptr_t)(void *);

uintptr_t set_specific_tag(uintptr_t ptr, uint8_t tag);
/// @brief Generates a tagged pointer with the specified tag
/// @param ptr The pointer we want to tag
/// @param tag The tag to tag the pointer with
/// @param size How many bytes to tag
void *mte_set_tag(void *ptr, uint8_t tag, size_t size);

void *mte_malloc(size_t size, uint8_t tag);

void mte_free(void* ptr, size_t size);

void *mte_alloc(size_t size);

uint8_t get_mte_tag(void *ptr);

void *allocate_global(size_t size);

void cross_compartment(void* ptr, size_t size , uint8_t current_tag, uint8_t target_tag, function_ptr_t func);


enum MTE_TAGS
{
    NO = 0x0,
    BLACK,
    WHITE,
    RED,
    GREEN,
    BLUE,
    YELLOW,
    CYAN,
    MAGENTA,
    PINK,
    BROWN,
    ORANGE,
    PURPLE,
    GOLD,
    GREY,
    FFFF
};

#endif