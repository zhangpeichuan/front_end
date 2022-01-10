#include <stdio.h>
//point type ；point arithmetic ；void point
int main(){
    int a = 1025;
    int* p = &a;
    char c = 'a';
    char* q;
    printf("address %d value = %d \n",&a,a);
    printf("address p %d value %d\n",p,*p);
    printf("address p+1%d value %d\n",p+1,*(p+1));
    printf("sizeof integer is %d \n",sizeof(int));
    printf("sizeof p is %d \n",sizeof(p));
    char* p0;
    p0 = (char *)p;//typecasting
    printf("sizeof char is %d \n",sizeof(char));
    printf("address p0 %d value %d \n",p0,*p0);
    printf("address p0+1 %d value %d \n",p0+1,*(p0+1));
    void* p1;//void point Genric pointer
    p1 = p;
    printf("address p1 %d \n",p1);
    printf("address p1+1 %d \n",p1+1);



    return 0;
}
