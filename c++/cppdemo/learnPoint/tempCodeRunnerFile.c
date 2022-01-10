#include <stdio.h>

/**
 * B[i][j] = *(B[i]+j)
 *          = *（*(B+i)+j）
 * *(B[i]+j)
 * B IJ can be written as Asterix of B i plus j if 
 * b ll for some value of i is a one dimensionnal array
 * then b i will give us an integer pointer will returne us an
 * integer pointer to the first integer in bi then adding j 
 * is basically performing pointer arithmetic and getting
 * a pointer to integer at index j in one dimensinal array bi
 * and then final this dereference is geting the value of tat ingeger
 * 
 * *（*(B+i)+j）
 * B+i return pointer to the one dimensional array of three integer and
 * T reference this partical deferenceing will give us the one dimensional
 * array and the name of one dimensional array return us a pointer to the first
 * element in the array.So once again will be pointer to integer.
 * 
 * int (*p)[j] = B
 * 
*/
void Func(int *A)//sugar A[]
{
    for (int i = 0; i < sizeof(A)/sizeof(*A); i++)
    {
        printf("address %p value %d \n",A+i,*(A+i));
    }
    
}
void Func2(int**B)
{
    for (int i = 0; i < sizeof(B)/sizeof(*B); i++)
    {
        printf("address B %p value %p \n",B+i,*(B+i));
        for (int j = 0; j < sizeof(*B)/sizeof(**B); j++)
        {
            printf("address B+j %p value %p \n",*(B+i)+j,*(*(B+i)+j));
        }
        
    }
    
}
int main(){
    int B[2][3] = {1,2,3,4,5,6};
    printf("B %p\n",B);//B startAddress of two dimensional Array
    printf("*B %p\n",*B);// one dimensional Array of three Integer
    printf("B[0] %p\n",B[0]);
    printf("B[0][0] %p\n",B[0][0]);
    printf("&B[0][0] %p\n",&B[0][0]);



    /**
     * int c[3][2][2]
     * int (*p)[2][2] = c;
     * print c //800
     * print *c or c[0] or &c[0][0]//800
     *          int(*)[2]
     * c[i][j][k] = *(c[i][j]+k) = *(*(c[i]+j)+k)
     *            = *(*(*(c+i)+j)+k）
     * 
    */
    int c[3][2][2] = {2,5,7,9,3,4,6,1,0,8,11,13};
    printf("c %p \n",c);
    printf("*c %p \n",*c);
    printf("c[0] %p \n",c[0]);
    printf("c[0][0] %p \n",c[0][0]);
    printf("c[0][0][0] %p \n",c[0][0][0]);
    printf("&c[0][0][0] %p \n",&c[0][0][0]);
    for (int i = 0; i < sizeof(c)/sizeof(*c); i++)
    {
        printf("address c %p sizeof(c) %d sizeof(*c)%d \n\n",&c,sizeof(c),sizeof(*c));
        for (int j = 0; j < sizeof(c[i])/sizeof(*c[i]); j++)
        {
            printf("address c[i] %p sizeof(c[i]) %d sizeof(*c[i])%d \n\n",&c[i],sizeof(c[i]),sizeof(*c[i]));
            for (int k = 0; k < sizeof(c[i][j])/sizeof(*c[i][j]); k++)
            {
                printf("i %d j %d k %d value %d address %p\n",i,j,k,c[i][j][k],&c[i][j][k]);
            }
            
        }
        
    }
    int A[] = {1,2};
    Func(A);
    Func2(B);
    return 0;
}