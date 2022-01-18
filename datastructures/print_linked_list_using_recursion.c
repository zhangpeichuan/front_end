#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
//Print Linked List using recursive
struct Node
{
    int data;
    struct Node* next;
};
void Print(struct Node* p){
    if (p == NULL) return;//Exit condition
    printf("%d ",p->data);//First print value in the node
    Print(p->next);//Recursive call
}
struct Node* Insert(struct Node* head,int data){
    struct Node* temp = (struct Node* )malloc(sizeof(struct Node));
    temp->data = data;
    temp->next = NULL;
    if (head == NULL) head = temp;
    else{
        struct Node* temp1 = head;
        while (temp1->next != NULL)
        {
            temp1 = temp1->next;
        }
        temp1->next = temp;
    }
    return head; 
}
int main(){
    int n=10000;
    struct Node* head = NULL;
    while (n < 10000)
    {
        int i;
        for (i = 0; i < n; i++)
        {
            head = Insert(head,i+1);
        }
        Print(head);
        n = 2*n;
        sleep(100);
    }
    
    // head = Insert(head,4);
    // head = Insert(head,5);
    // head = Insert(head,7);
    // head = Insert(head,9);
    // Print(head);
}