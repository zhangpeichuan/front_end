#include <stdio.h>

int b = 100;
int fun(){
    printf("the fun is %p \n",(void *)fun);
    static int a = 100;
    return a++;
}
int main(){
    static int a;
    unsigned char* p;
    char* p1 = "helao world";
    printf("the main is %p \n",(void *)main);
    printf("%d \n",fun());
    printf("the p1 is %s\n",p1);
    printf("the p1 address is %p\n",p1);
    printf("the string address is %p\n","helao world");
    p1[3] = 'l';
    printf("the p1 is %s\n",p1);
    printf("the p1 address is %p\n",p1);
    printf("the string address is %p\n","helao world");
 
    a = 0x10;
    printf("the b is %p \n",&b);
    p = (unsigned char*)main;
    printf("the p[0] is %x \n",p[0]);
    p[0] = 0x12;
    printf("++++++ the p[0] is %x \n",p[0]);
    return 0;
}