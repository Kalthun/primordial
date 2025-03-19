#include "stdio.h"

int factorial(int num) {

    // Invalid Input (Break Case)
    if (num < 0) return -1;

    // Base Case
    if (num == 0) return 1;
    
    // Recurse
    return num * factorial(num - 1);
}

int main(void) {

    printf("%d\n", factorial(-1));
    printf("%d\n", factorial(0));
    printf("%d\n", factorial(5));

    return 0;

}
