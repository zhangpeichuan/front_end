#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

struct BstNode{
    int data;
    struct BstNode* left;
    struct BstNode* right;
};
struct BstNode* root;
struct BstNode* GetNewNode(int data){
    struct BstNode* tmpNode = (struct BstNode*)malloc(sizeof(struct BstNode));
    tmpNode->data = data;
    tmpNode->left = tmpNode->right = NULL;
    return tmpNode;
}
struct BstNode* Insert(struct BstNode* root,int data)
{
    if (root == NULL){
        root = GetNewNode(data);
    }else if (data <= root->data)
    {
        root->left = Insert(root->left,data);
    }else{
        root->right = Insert(root->right,data);
    }
    return root;
}
bool Search(struct BstNode* root,int data){
    if (root == NULL) {
        return false;
    }else if (root->data == data)
    {
        return true;
    }else if (data <= root->data )
    {
        return Search(root->left,data);
    }else return Search(root->right,data);    
}
int main(){
    root = NULL;
    root = Insert(root,15);
    root = Insert(root,10);
    root = Insert(root,20);
    root = Insert(root,25);
    root = Insert(root,8);
    root = Insert(root,12);
    int number;
    printf("Enter number be found!");
    scanf("%d",&number);

    if (Search(root,number))
    {
        printf("be found! \n");
    }else{
        printf("not found! \n ");
    }
    
    // printf("search %d \n",Search(root,10));
    // printf("search %d \n",Search(root,21));
    // printf("search %d \n",Search(root,20));
    // printf("search %d \n",Search(root,15));

    return 0;
}
 