/*esto es un comentario*/
%option noyywrap
%{
#include <stdio.h>
%}

%%
[\n\t]
go|if|play|it|window|jump|think|learn|study|to|at|the|link {printf("\"%s\" es",yytext);printf(" palabra clave identificada\n");}
[a-zA-Z]+ {printf("\"%s\" es",yytext);printf(" otra palabra\n");}
[0-9]+ {printf("\"%s\" es",yytext);printf(" numero encontrado\n");}
%%

int main() {
    yylex();
    return 1;
}