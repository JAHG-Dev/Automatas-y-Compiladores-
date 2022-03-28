%option noyywrap
%{
#include <stdio.h>
int num;
%}

%%
[\n\t]
[0|1]+[0]" " {printf("Numero binario par %d encontrado %s\n",++num,yytext);}
%%

int main(){
    yylex();
    return 1;
}