#include "stdio.h"

void yell() {
    puts("HELP! HELP ME!");
}

int main(void) {

    int x = 2;
    int y = 3;

    int z = x + y;

    printf("%d\n",z);

    yell();

    return 0;

}
