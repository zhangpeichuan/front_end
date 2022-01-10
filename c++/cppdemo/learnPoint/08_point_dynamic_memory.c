#include <stdio.h>
#include <stdlib.h>

//stack frame
int total;
int Square(int x){
    return x*x;
}
int SquareOfSum(int x,int y){
    int z = Square(x + y);
    return z;
}
int main()
{
    int a = 4, b = 8;//goes on stack
    total = SquareOfSum(a,b);
    printf("total %d \n",total);
    int *p;
    p = (int *)malloc(sizeof(int));
    *p = 10;
    printf("p address %p value %d\n",p,*p);
    free(p);
    p = (int *)malloc(20*sizeof(int));
    *p = 20;
    printf("p address %p value %d\n",p,*p);
    free(p);
    printf("a address %p value %d\n",&a,a);
    return 0;
}