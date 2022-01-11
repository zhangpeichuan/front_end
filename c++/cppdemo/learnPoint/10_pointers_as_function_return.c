#include <stdio.h>
#include <stdlib.h>

//Use function stack frame user the address of memory 
void PrintHelloWorld(){
    printf("HelloWorld! \n");
}
int Add(int a,int b)//called function 
{
    printf("Address of a in Add = %p value %d\n",&a,a);
    printf("Address of b in Add = %p value %d\n",&b,b);
    int c = a + b;
    return c;
}
int *AddReference(int *a,int *b)//called function return pointer to Integer
{
    //a and b pointer to Integers local to add
    printf("Address of a in Add = %p\n",&a);
    printf("Address of a in Add (address of a of main)%p \n",a);
    printf("Value of Address Stored in a of Add = %d \n",*a);
    int *c = (int *)malloc(sizeof(int));
    *c = (*a) + (*b);
    return c;//Error function returns address of local variabl except heap address
}
int main(){// calling function
    int a = 2,b = 4;
    printf("Address of a in main = %p %p value %d\n",&a,&a,a);
    printf("Address of b in main = %p value %d\n",&b,b);
    //call by value
    int z = Add(a,b);// value in x of main is copied to a of Add;
                    //alue in y of main is copied to b of Add;
    printf("Sum = %d \n",z);
    int *ptr = AddReference(&a,&b);
    PrintHelloWorld();
    printf("Sum = %d \n",*ptr);
    return 0;
}