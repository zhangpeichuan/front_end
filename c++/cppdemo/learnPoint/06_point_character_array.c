#include <stdio.h>
#include <string.h>
// character arrays and pointers
/**
 * 2、Arrays and pointers are different types that
 * are used in similar manner
 * 3、Arrays are always passed by to function by reference
*/
void print(const char* C)
{
    int i = 0;
    // C[0] = 'H';
    // while (C[i] != '\0')//*(c+i)
    while (*(C+i) != '\0')
    // while (*C != '\0')
    {   
        printf("%c",*(C+i));
        i++;
    }
    printf("\n");
    
}

int main(){
    char C[10];//Strubg gets stored in the space for array
    //char *C = "Helloworld";//String gets stored as compile time constant
    C[0] = 'J';
    C[1] = 'O';
    C[2] = 'H';
    C[3] = 'N';
    C[4] = '\0';
    int length = strlen(C);
    printf("%s \n",C);
    printf("length = %d \n",length);
    char c[] = "JOHN";
    printf("size in bytes = %ld  length = %ld\n",sizeof(c),strlen(c));
    char c1[6] = "Hello";

    char* c2;
    c2 = c1;
    printf("%c \n",c2[1]);
    c2[0] = 'A';
    printf("%s \n",c1);
    print(c1);
    print(c2);    
    return 0;
}