#include <stdio.h>

void findMinMax(int a, int b) {
    int max = a - ((a - b) & ((a - b) >> 31));
    int min = b + ((a - b) & ((a - b) >> 31));
    
    printf("Max: %d, Min: %d\n", max, min);
}

int main() {
    int a = 10, b = 5;
    findMinMax(a, b);
    return 0;
}
