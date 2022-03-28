%option noyywrap
%{
#include <stdio.h>
int num;
%}

%%
[\n\t]
[0|1]*01[1|0]* {printf("Numero binario %d con cadena 01 %s\n",++num,yytext);}
%%

int main() {
    yylex();
    return 1;
}