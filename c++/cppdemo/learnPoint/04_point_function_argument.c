#include <stdio.h>
// point as function arguments --- call by reference

void IncrementReference(int* a){
    printf("address of variable a in IncrementReference = %p \n",a);
    *a = *a + 1;
}
void Increment(int a){
    printf("address of variable a in increment = %p \n",&a);
    a = a + 1;
}
int main(){ 
    int a = 10;
    printf("address of variable a in main %p\n",&a);
    Increment(a);
    printf("a = %d \n ",a);
    IncrementReference(&a);
    printf("a = %d \n ",a);
    return 0;
}