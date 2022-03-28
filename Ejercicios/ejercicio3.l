%{
#include <stdio.h>
int min=0, may=0, num=0;
%}

%%
[A-Z] {printf("Mayuscula\t");may++;}
[a-z] {printf("minuscula\t");min++}
[0-9] {printf("Digito\t");num++}
%%
int yywrap()
{
    return 1;
}

int main(){
 printf("Escribe un texto: ");
 yylex();
 printf("Mayuscula=%d, minuscula=%d, Digito=%d",may,min,num);   
}