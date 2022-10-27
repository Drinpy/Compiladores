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


"+"             printf("%3d>%11s: soma\n", nlin, yytext);
"-"             printf("%3d>%11s: subtracao\n", nlin, yytext);
"*"             printf("%3d>%11s: multiplicacao\n", nlin, yytext);
"<-"            printf("%3d>%11s: atribuicao\n", nlin, yytext);
"div"           printf("%3d>%11s: divisao\n", nlin, yytext);
">"             printf("%3d>%11s: maior\n", nlin, yytext);
"<"             printf("%3d>%11s: menor\n", nlin, yytext);
"="             printf("%3d>%11s: igual\n", nlin, yytext);
e               printf("%3d>%11s: e logico\n", nlin, yytext);
ou              printf("%3d>%11s: ou logico\n", nlin, yytext);
nao             printf("%3d>%11s: negacao\n", nlin, yytext);
"("             printf("%3d>%11s: abre\n", nlin, yytext);
")"             printf("%3d>%11s: fecha\n", nlin, yytext);

"V"     printf("%11s: constante\n", yytext);
"F"     printf("%11s: constante\n", yytext);

"//".*          ;
"/*"            BEGIN(coment);
<coment>"*/"    BEGIN(INITIAL);
<coment>.       ;
<coment>\n      nlin++;

{identificador}     printf("%3d|%11s: identificador\n", nlin, yytext);
{numero}            printf("%3d|%11s: numero\n", nlin, yytext);
{espaço}            ;
{novalinha}         nlin++;

%%
int yywrap() { return1; }
int main()
{
    yylex();
    return 0;
}
