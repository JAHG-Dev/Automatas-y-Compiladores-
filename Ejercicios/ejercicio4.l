%{
#include <stdio.h>
int min=0, may=0, num=0,gion=0;
%}

%%
[A-Z] {printf("Mayuscula ");printf("%d\t",++may);}
[a-z] {printf("minuscula ");printf("%d\t",++min);}
[0-9] {printf("Digito ");printf("%d\t",++num);}
["_"] {printf("Guion bajo ");printf("%d\t",++gion);}
%%
int yywrap()
{
    return 1;
}

int main(){
 printf("Escribe una cadena de texto: ");
 yylex();
}