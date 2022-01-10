#include <stdio.h>
//Array passby reference,useing the first element address 
int sumOfElements(int A[],int size){//"int* A or int A[]" ...it's the same
    int i,sum = 0;
    printf("SOE sizeof A = %ld,sizeof A[0] = %ld \n",sizeof(*A),sizeof(A[0]));
    for (i = 0; i < size; i++)
    {
        sum += *(A+i);
    }
    
    return sum;
}
void doubleElement(int A[],int size){//"int* A or int A[]" ...it's the same
    int i;
    printf("Double sizeof A = %ld,sizeof A[0] = %ld \n",sizeof(*A),sizeof(A[0]));
    for (i = 0; i < size; i++)
    {
        A[i]= 2*A[i];
    }
}
int main(){
    int A[] = {1,2,3,4,5};
    int i = 0;
    int size = sizeof(A)/sizeof(*A);
    for (i = 0; i < size; i++)
    {
        printf("%d ",A[i]);
    }
    printf("\n");
    
    doubleElement(A,size);
        for (i = 0; i < size; i++)
    {
        printf("%d ",A[i]);
    }
    printf("\n");
    int total = sumOfElements(A,size);//A || &A[0] Compiler Array 
    printf("Main sizeof A = %ld,sizeof A[0] = %ld\n",sizeof(A),sizeof(*A));
    printf("sumOfElements %d \n",total);
    return 0;
}