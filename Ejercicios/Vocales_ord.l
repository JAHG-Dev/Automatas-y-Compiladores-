/*Imprime cantidad de vocales en Vector*/
%option noyywrap
%{
#include <stdio.h>
int conta=0,conte=0,conti=0,conto=0,contu=0,i,j; /// Vocales y dir
int temp=0,tmp=0; // Temp
int v[5]; /// Vector
%}

%%
a {printf("Vocal a\n"); conta++;}
e {printf("Vocal e\n"); conte++;}
i {printf("Vocal i\n"); conti++;}
o {printf("Vocal o\n"); conto++;}
u {printf("Vocal u\n"); contu++;}
. {ECHO;}
\n {printf("Salto de linea\n");
    printf("\n %i, %i, %i, %i, %i \n\n",conta,conte,conti,conto,contu);
    v[0]=contu;v[0]=conto;v[0]=conti;v[0]=conte;v[0]=conta;
    for(i=1;i<=5;i++){
        for(j=5-1;j>i;j--){
            if(v[j]<v[j-1]){
                tmp=v[j];
                v[j]=v[j-1];
                v[j-1]=temp;
            }
        }
    printf("[%i]",v[i-1]);
}   }
%%
int main(){
    printf("Escribe tu texto:\n");
    yylex();
    return 0;
}