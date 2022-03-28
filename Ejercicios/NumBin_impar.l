%option noyywrap
%{
#include <stdio.h>
int num;
%}

%%
[\n\t]
[0|1]*[1]" " {printf("Numero binario impar %d encontrado %s\n",++num,yytext);}
%%

int main(){
    yylex();
    return 1;
}