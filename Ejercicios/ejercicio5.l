%option noyywrap
%{
#include <stdio.h>
%}

%%
[\n\t]
go|if|play|it|window|jump|think|learn|study|to|at|the|link {printf("palabra clave identificada\n");}
[a-zA-Z]+ {printf("Otra palabra\n");}
[0-9]+ {printf("numeros\n");}
%%

int main() {
    yylex();
    return 1;
}