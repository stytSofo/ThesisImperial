#include "blue.h"

/// @brief This function should only be able to access pointers with tag BLUE (0x05)
/// @param ptr
void compartment2(unsigned char *ptr)
{
    // printf("%c \n", ptr[0]);

    ptr[0xa] = 'B';
}

void callable_compartment2(){
    printf("I am the compartment 2");
}