#include <stdio.h>
#include <stdlib.h>
/**
 * Pointers ----can point to data 
 *          ----can point to functions
 * 
 * 
 * @return int 
 */
int Add(int a,int b){
    return a+b;
}
void printHello(char* name)
{
    printf("Hello %s\n",name);
}
//returntype (*FunctionName)(argument);
int main()
{
    /**
     * @brief 
     * Pointer to function that should take
     * (int,int) as argument/parameter and return int
     */
    int (*p)(int,int);
    p=&Add;
    int a = (*p)(1,2);//de-referencing and executing the function  
    printf("sum %d\n",a);
    int b = p(1,2);
    printf("sum %d \n",b);

    void (*ptr)();
    ptr = printHello;
    ptr("zhangsan");
    return 0;
}