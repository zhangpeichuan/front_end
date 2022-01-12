#include <stdio.h>
#include <stdlib.h>

typedef struct Node{
    int data;
    struct Node* next;
}LinkedList;

int main()
{   
    LinkedList* A = NULL;
    LinkedList *tmp = (LinkedList *)malloc(sizeof(LinkedList));
    tmp->data = 1;
    tmp->next = NULL;
    A->next = tmp;
    LinkedList *traver = A;
    do
    {   
        printf("address %p %d ",traver,traver->data);
        traver = traver->next;
    } while (traver->next != NULL);
    
    
    return 0;
}