#include <stdio.h>
#include <stdlib.h>

typedef struct LinkedNode{
    int data;
    struct LinkedNode* next;
}LinkedList;

LinkedList* createLinkedNode(int value){
    LinkedList *tmp = (LinkedList *)malloc(sizeof(LinkedList));
    tmp->data = value;
    tmp->next = NULL;
    return tmp;
}
void insertTail(const LinkedList* list,const LinkedList* node)
{
    LinkedList *tmp = (LinkedList *)list;
    while (tmp->next != NULL)
    {
        tmp = tmp->next;
    }
    tmp->next = (LinkedList *)node;
}
void traverLinkedList(const LinkedList* list){
    LinkedList *tmp = (LinkedList *)list;
    while (tmp->next != NULL)
    {
        printf("address %p value %d \n",tmp,tmp->data);
        tmp = tmp->next;
    }
}
int main()
{   
    LinkedList* A = NULL;
    for (int i = 0; i < 10; i++)
    {
        LinkedList* tmp = createLinkedNode(i+1);
        if (i == 0) {
            A = tmp;
        }else{
            insertTail(A,tmp);
        }
        
    }
    traverLinkedList(A);
}