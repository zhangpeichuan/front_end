#include <stdio.h>

int main()
{
    int x = 105;
    int* p = &x;
    int**q = &p;
    int*** r = &q;

    printf("address %d value %d \n",&x,x);
    printf("address p %d value %d \n",p,*p);
    printf("address q %d value *q %d **q %d \n",q,*q,**q);
    printf("address r %d value *r %d **r %d ***r %d \n",r,*r,**r,***r);
    *p = 6;
    printf("address %d value %d \n",&x,x);
    printf("address p %d value %d \n",p,*p);
    printf("address q %d value *q %d **q %d \n",q,*q,**q);
    printf("address r %d value *r %d **r %d ***r %d  \n",r,*r,**r,***r);
    ***r = 10;
    printf("%d \n",x);
    **q = *p + 2;
    printf("%d \n",x);
    return 0;
}