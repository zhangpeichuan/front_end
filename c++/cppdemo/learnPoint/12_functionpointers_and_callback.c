#include <stdio.h>
#include <stdlib.h>
/*
 * Function Pointers can be arguments to Functions
 *  can call back the function that pointer will point to 
**/
void A()
{
    printf("Hello \n");
}
void B(void (*ptr)())//Function pointer as argument
{
    ptr();//call-back function that 'ptr' point to
}
// callback function should compare two integers,should return 1 
// if first element has higher rank,
// 0 if elements are equal and -1 if secound element has higher rank
void bubbleSort(int *A,int n,int (*compare)(int,int)){
    int i,j,tmp;
    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n-1; j++)
        {
             if(compare(A[j],A[j+i]) > 0){
            // if (A[j] > A[j+1]){//compare A[j] with A[j+1] and SWAP if need
                tmp = A[j];
                A[j] = A[j+1];
                A[j+1] = tmp;
            }
        }
    }
}
int compare(int a,int b){
    if (a > b) return 1;
    else return -1;
}
int absolute_compare(int m,int n)
{
    if(abs(m) > abs(n)) return 1;
    return -1;
}
int main(){
    // void (*p)() = A;
    // B(*p);
    // B(A);//A is a callback function
    int i,size,a[]={3,2,5,6,4,7,8,10,11,100,200};
    size = sizeof(a)/sizeof(*a);
    bubbleSort(a,size,compare);
    for (i = 0; i < size; i++)
    {
        printf("%d ",a[i]);
    }
    printf("\n");
    int c[] = {-31,22,-1,50,-6,4};
    bubbleSort(c,6,absolute_compare);
    for (i = 0; i < 6; i++)
    {
        printf("%d ",c[i]);
    }
    return 0;
}