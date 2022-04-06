%option noyywrap
%{
    #include <stdio.h>
    int palabra_reservada = 0, palabra_comun = 0, numero = 0, operadores = 0;
%}

%%
and|elif|global|or|asset|else|if|pass {
    palabra_reservada++;
    printf("Palabra Reservada Identificada\n");
}

[a-zA-Z]+ {
    palabra_comun++;
    printf("Palabra Comun Identificada\n");
}

[0-9]+ {
    numero++;
    printf("Numero Identificado\n");
}

[\+|\-|\/|\*] {
    operadores++;
    printf("Operador Identificado\n");
}

[\n] {
    printf("Palabras Reservadas: %d \n Palabras Comunes: %d \n Numeros: %d \n Operadores:  %d \n", palabra_reservada, palabra_comun ,numero ,operadores);
    palabra_reservada = 0;
    palabra_comun = 0;
    numero = 0;
    operadores = 0;
}
%%

int main() {
    yylex();
}