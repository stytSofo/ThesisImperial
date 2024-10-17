#include "red.h"

/// @brief This function should only be able to access pointers with tag RED (0x03)
/// @param ptr 
void compartment1(unsigned char* ptr){
    // printf("%c \n",ptr[0]);
    
    // asm volatile("stg %0, [%0]" : : "r"(ptr) : "memory");

    printf("%hhx\n",get_mte_tag(ptr));
    
    ptr[0xa] = 'A';
}

void callable_compartment1(){
    printf("I am the compartment 1");
}