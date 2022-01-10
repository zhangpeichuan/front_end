#include <stdio.h>
//Work with Point
int main()
{
    int a;
    int *p;
    a = 12;
    p = &a;
    printf("Address of P is %p\n",p);
    printf("Value at p is %d\n",*p);
    int b=10;
    *p = b;
    printf("Address of P is %p\n",p);
    printf("Value at p is %d\n",*p);

    int *q = &b;
    printf("Address of q is %p\n",q);
    printf("Value at q is %d\n",*q);

    printf("a %p\n",&a);
    printf("b %p\n",&b);
    // Point arithmetic P is Integer sizeof(*p)++
    printf("sizeof p %d \n",sizeof(p));
    printf("sizeof *p %d \n",sizeof(*p));
    printf("sizeof int %d bytes \n",sizeof(int));

    printf("Address of P is %p\n",p);//p is 0x7fff78195fd0
    printf("Address of P+1 is %p\n",p+1);//p + 1 is 0x7fff78195fd4
    printf("Value at p is %d\n",*p);
    printf("Value at p+1 is %d\n",*(p+1));
    printf("Value at p is %d\n",p);
    printf("Value at p+1 is %d\n",p+1);
    printf("Value at p+2 is %d\n",p+2);

    return 0;
}