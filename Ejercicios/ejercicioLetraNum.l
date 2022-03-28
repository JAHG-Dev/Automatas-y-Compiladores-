%option noyywrap
%{
#include <stdio.h>
int let=0,num=0;
%}

%%
[\n\t]
quit {printf(" %d Palabras ", let);printf("%d Numeros \n", num);num=0;let=0;}
[a-zA-Z]+ {let++;}
[0-9]+ {num++;}
%%

int main(){
    yylex();
}