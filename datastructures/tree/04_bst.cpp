#include <iostream>
using namespace std;

struct BstNode
{
    int data;
    BstNode* left;
    BstNode* right;
};
BstNode* GetNewNode(int data){
    BstNode* newNode = new BstNode();
    newNode->data = data;
    newNode->left = newNode->right = NULL;
    return newNode;
}
BstNode* Insert(BstNode* rootPtr,int data)
{
    if(rootPtr == NULL)  
    {
        rootPtr = GetNewNode(data);
    }else if (data <= rootPtr->data)
    {
        return Insert(rootPtr->left,data);
    }else{
        return Insert(rootPtr->right,data);
    }
}
bool Search(BstNode* root,int data){
    if (root == NULL){
        return false;
    }else if (data == root->data)
    {
        return true;
    }else if (data <= (root->data)
    {
        return Search(root->left,data);
    }else{
        return Search(root->right,data);
    }
}
int main(){
    struct BstNode* root;
    root = NULL;
    root = Insert(root,15);
    root = Insert(root,10);
    root = Insert(root,20);
    printf("find 15 %d",Search(root,15));
    printf("find 115 %d",Search(root,115));
    printf("find 10 %d",Search(root,10));
    printf("find 20 %d",Search(root,20));

}
