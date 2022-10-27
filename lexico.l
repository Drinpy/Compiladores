identificador [a-zA-Z]([a-zA-Z0-9])*
numero [0-9]+
espaço [ \t]+
novalinha [\n]

%%
programa       printf("%11s: reservada\n", yytext);
inicio         printf("%11s: reservada\n", yytext);
fimprograma    printf("%11s: reservada\n", yytext);
leia           printf("%11s: reservada\n", yytext);
escreva        printf("%11s: reservada\n", yytext);
se             printf("%11s: reservada\n", yytext);
entao          printf("%11s: reservada\n", yytext);
senao          printf("%11s: reservada\n", yytext);
fimse          printf("%11s: reservada\n", yytext);
enquanto       printf("%11s: reservada\n", yytext);
faca           printf("%11s: reservada\n", yytext);
fimenquanto    printf("%11s: reservada\n", yytext);
inteiro        printf("%11s: reservada\n", yytext);
logico         printf("%11s: reservada\n", yytext);


"+"     printf("%11s: operador\n", yytext);
"-"     printf("%11s: operador\n", yytext);
"*"     printf("%11s: operador\n", yytext);
div     printf("%11s: operador\n", yytext);
">"     printf("%11s: operador\n", yytext);
"<"     printf("%11s: operador\n", yytext);
"="     printf("%11s: operador\n", yytext);
 e      printf("%11s: operador\n", yytext);
 ou     printf("%11s: operador\n", yytext);
 nao    printf("%11s: operador\n", yytext);
"("     printf("%11s: abre\n", yytext);
")"     printf("%11s: fecha\n", yytext);

"V"     printf("%11s: constante\n", yytext);
"F"     printf("%11s: constante\n", yytext);

{identificador}     printf("%11s: identificador\n", yytext);
{numero}            printf("%11s: numero\n", yytext);
{espaço}            ;
{novalinha}         ;

%%
int yywrap() { return1; }
int main()
{
    yylex();
    return 0;
}
