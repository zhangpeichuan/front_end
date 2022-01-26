#include <stdio.h>
#include <stdlib.h>
#include <time.h>

//simple betting game
/**
 * Jack Queen King computer shuffers there cards
 * player guess the posion of Queen
 * if you wine ,you w'll get 3*bet 
 * if you lose ,you looses the bet amount
 * play have $100 initially
 */
int cash = 100;
void Play(int bet){
    // char c[3] = {'J','Q','K'};
    char* c = (char*)malloc(1000000000*sizeof(char));
    c[0] = 'J';
    c[1] = 'Q';
    c[2] = 'K';
    printf("shuffering ...");
    srand(time(NULL));
    for (int i = 0; i < 5; i++)
    {
        int x = rand()%3;
        int y = rand()%3;
        int tmp = c[x];
        c[x] = c[y];
        c[y] = tmp;//swap charecters at position x and position y
    }
    int playGuess;
    printf("what's the position of Queen in - 1,2 or 3?");
    scanf("%d",&playGuess);
    if (c[playGuess -1] == 'Q')
    {
        cash += 3* bet;
        printf("You Wine,Result = %c %c %c Total cash= %d\n",c[0],c[1],c[2],cash);
    }else{
        cash -= bet;
        printf("You Loose ,Result = %c %c %c Total cash= %d\n",c[0],c[1],c[2],cash);
    }
    free(c);
}
int main(){
    int bet;
    printf("**Welcome to the Vitural CashNo **\n");
    while (cash > 0)
    {
        printf("what's your bet $");
        scanf("%d",&bet);
        if (bet == 0 || bet > cash) break;
        Play(bet);
        printf("\n*****************************\n");
    }
    return 0;
}