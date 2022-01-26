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
        rootPtr->left = Insert(rootPtr->left,data);
    }else{
        rootPtr->right = Insert(rootPtr->right,data);
    }
    return rootPtr;
}
int FindMin(BstNode* root){
    if (root == NULL)
    {
        cout<<"Tree is empty!\n";
        return -1;
    }    
    while (root->left != NULL)
    {
        root = root->left;
    }
    return root->data;
}
int FindMinR(BstNode* root){
    if (root == NULL)
    {
        cout<<"Tree is empty!\n";
        return -1;
    }else if (root->left == NULL){
        return root->data;
    }
    return FindMinR(root->left);
}
int main(){
    struct BstNode* root;
    root = NULL;
    root = Insert(root,15);
    root = Insert(root,10);
    root = Insert(root,20);
    root = Insert(root,6);
    root = Insert(root,2);
    cout<<FindMinR(root)<<endl;
    
    // printf("find 15 %d\n",Search(root,15));
    // printf("find 115 %d\n",Search(root,115));
    // printf("find 10 %d\n",Search(root,10));
    // printf("find 20 %d\n",Search(root,20));
}
