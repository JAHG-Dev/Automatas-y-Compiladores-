%option noyywrap
%{
#include <stdio.h>
%}

%%
[\n\t]
go|if|play|it|window|jump|think|learn|study|to|at|the|link {printf("palabra clave identificada\n");}
auto|else|long|switch|break|enum|register|typedef|case|extern|return|union|char|float|short|unsigned|const|for|signed|void {printf("palabra reservada C identificada\n");}
[a-zA-Z]+ {printf("Otra palabra\n");}
[\+|\-|\*|\/] {printf("Operador\n");}
[0-9]+ {printf("numeros\n");}
%%

int main() {
    yylex();
    return 1;
}