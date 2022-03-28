%{
#include <stdio.h>
int min=0, may=0;
%}

%%
[A-Z] {printf("Mayuscula\t"); may++;}
[a-z] {printf("minuscula\t"); min++;}
%%
int yywrap(){
    return 1;
}

int main(){
    printf("Escribe una cadena de texto: ");
    yylex();
    printf("Mayuscula=%d, minuscula=%d", may, min);   
}