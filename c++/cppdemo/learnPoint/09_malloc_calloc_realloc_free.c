#include <stdio.h>
#include <stdlib.h>

/**
 * Allocate block of memory
 * malloc void* malloc(size_t size);//unsigned int
 *          type_casting    total*sizeofunit
 * int* p = (int *)malloc(20*sizeof(int));//new int[20]
 * 
 * calloc void* calloc(size_t num,size_t size)
 * 
 * 
 * deallocate block of memory
 * free
 * @return int 
 */
int main(){
    int n;
    int *p;
    printf("Enter size of Array \n");
    scanf("%d",&n);
    p = (int *)malloc(n*sizeof(int));
    // p = (int *)calloc(n,sizeof(int));

    printf("p address %p value %d \n",p,*p);
    for (int i = 0; i < n; i++)
    {
        *(p+i) = i+1;
    }
    for (int i = 0; i < n; i++)
    {
        printf("%p %d \n",p+i,p[i]);
    }
    int *B = realloc(p,n*sizeof(int));//(p,0)==free(p)
    //realloc(NULL,n*sizeof(int))//equal to malloc
    // free(p);//After free,adjust pointer to NULL
    // p = NULL;
    for (int i = 0; i < 2*n; i++)
    {
        printf("%p %d \n",B+i,B[i]);
    }
    return 0;
}