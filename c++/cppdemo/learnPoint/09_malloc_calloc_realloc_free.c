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
    // for (int i = 0; i < n; i++)
    // {
    //     *(p+i) = i;
    // }
    for (int i = 0; i < n; i++)
    {
        printf("%d %d \n",*(p+i),p[i]);
    }
    free(p);
    return 0;
}