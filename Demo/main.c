#include "mte.h"
#include "red.h"
#include "blue.h"

int main()
{
    if (!((getauxval(AT_HWCAP2)) & HWCAP2_MTE))
    {
        printf("MTE is not supported\n");
        return EXIT_FAILURE;
    }
    else
    {
        printf("MTE is supported\n");
    }

    /*
     * Enable MTE with asynchronous checking
     *
     */
    if (prctl(PR_SET_TAGGED_ADDR_CTRL,
              PR_TAGGED_ADDR_ENABLE | PR_MTE_TCF_ASYNC | (0xfffe << PR_MTE_TAG_SHIFT),
              0, 0, 0))
    {
        perror("prctl() failed");
        return EXIT_FAILURE;
    }

    // each of the pointers get a page.
    unsigned char *safe_red_data = mte_malloc(32,RED);
    unsigned char *safe_blue_data = mte_malloc(32,BLUE);
    unsigned char *match_all = mte_malloc(32,FFFF);
    unsigned char *normal_data = malloc(32);

    if (safe_red_data == MAP_FAILED)
    {
        printf("Map error at red pointer\nExiting...\n");
        exit(-1);
    }
    if (safe_blue_data == MAP_FAILED)
    {
        printf("Map error at blue pointer\nExiting...\n");
        exit(-1);
    }
    if (match_all == MAP_FAILED)
    {
        printf("Map error at match_all pointer\nExiting...\n");
        exit(-1);
    }


    for (int i = 0; i < 32; i++)
    {
        safe_red_data[i] = 'a' + i;
        safe_blue_data[i] = 'a' + i;
        match_all[i] = 'a'+i;
        normal_data[i] = 'a'+i;
    }

    printf("Accessing compartment1 with RED pointer %p\n", safe_red_data);
    compartment1(safe_red_data);
    printf("Accessing Compartment2 with BLUE pointer %p\n", safe_blue_data);
    compartment2(safe_blue_data);
    printf("Accessing Compartment2 with Untagged pointer %p\n", normal_data);
    compartment2(normal_data);

    printf("Accessing Compartment2 with MATCH_ALL pointer %p\n", match_all);
    compartment2(match_all);
    
    printf("Accessing compartment1 with BLUE pointer %p\n", safe_blue_data);
    compartment1(safe_blue_data);

    return 0;
}