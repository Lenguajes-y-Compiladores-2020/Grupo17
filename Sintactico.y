%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <conio.h>
#include <errno.h>
#include "y.tab.h"

int yystopparser=0;
char * yytext;
                
FILE  *yyin;


%}

%token DIM
%token AS
%token PROGRAM
%token ENDPROGRAM
%token DOS_PUNTOS
%token C_A
%token C_C
%token INTEGER
%token STRING
%token FLOAT
%token REAL
%token COMA
%token ID 
%token OPE_ASIG
%token OPE_SUM
%token OPE_RES
%token OPE_MUL
%token OPE_DIV
%token CTE_REAL
%token CTE_STR
%token CTE_INT
%token P_A
%token P_C
%token IF
%token THEN
%token ELSE
%token ENDIF
%token IGUAL
%token DIST
%token MENOR
%token MAYOR
%token MEN_IG
%token MAY_IG
%token AND
%token OR
%token NOT
%token WHILE
%token ENDWHILE
%token PUT
%token GET
%token CONST
%token MAXIMO
%token PUNTO_COMA
%token L_A
%token L_C

%%
programa:   
		 declaracion inicio	{printf("\n---------------------------\n");}			
							{printf("\n****COMPILACION EXITOSA****\n");}	
							{printf("\n---------------------------\n");}
  ;
  
declaracion: definiciones 	{printf("\n***REGLA 1 -> Declaracion:\n");}
							{printf("\t\t\tDefiniciones\n");} 
;

definiciones:definicion 				{printf("\n***REGLA 2 -> Definiciones:\n");} 
										{printf("\t\t\tDefinicion\n");} 
			|definiciones definicion 	{printf("\n***REGLA 3 -> Definiciones:\n");}
										{printf("\t\t\tDefiniciones Definicion\n");}
	;
definicion: DIM MENOR lista_id MAYOR AS MENOR lista_tipo_dato MAYOR  PUNTO_COMA
										{printf("\n***REGLA 4 -> Definicion:\n");}
										{printf("\t\t\tDIM MENOR Lista_Tipo_Dato AS MAYOR DOS_PUNTOS MENOR Lista_ID MAYOR \n");}
	;           
inicio:	 lista_sentencias 	{printf("\n***REGLA 5 -> Inicio:\n");}
												{printf("\t\t\tLista_Sentencias\n");}
	;
lista_sentencias:sentencia		{printf("\n***REGLA 6 -> Lista_Sentencias:\n");}
								{printf("\t\t\tSentencia\n");}
				|lista_sentencias sentencia		{printf("\n***REGLA 7 -> Lista_Sentencias:\n");}
												{printf("\t\t\t Lista_Sentencias Sentencia\n");}
;
sentencia:asignacion	{printf("\n***REGLA 8 -> Sentencia:\n");}
						{printf("\t\t\tAsignacion\n");}
		  |decision		{printf("\n***REGLA 9 -> Sentencia:\n");}
						{printf("\t\t\tDecision\n");}
		  |iteracion    {printf("\n***REGLA 10 -> Sentencia:\n");}
						{printf("\t\t\tIteracion\n");}
		  |entrada		{printf("\n***REGLA 11 -> Sentencia:\n");}
						{printf("\t\t\tEntrada\n");}
		  |salida       {printf("\n***REGLA 12 -> Sentencia:\n");}
						{printf("\t\t\tSalida\n");}
		  |constante    {printf("\n***REGLA 50 -> Sentencia:\n");}
						{printf("\t\t\tConstante\n");}		  
;

asignacion: ID OPE_ASIG expresion PUNTO_COMA	{printf("\n***REGLA 13 -> Asignacion:\n");}	
												{printf("\t\t\tID OPE_ASIG Expresion\n");}
;

lista_tipo_dato: tipo_dato					{printf("\n***REGLA 14 -> Lista_Tipo_Dato:\n");}
											{printf("\t\t\tTipo_Dato\n");}
                |tipo_dato COMA lista_tipo_dato {printf("\n***REGLA 15 -> Lista_Tipo_Dato:\n");}
												{printf("\t\t\t Lista_Tipo_Dato COMA Lista_Tipo_Dato\n");}
;
 
tipo_dato:INTEGER 				        {printf("\n***REGLA 16 -> Tipo_Dato:\n");}
										{printf("\t\t\tInteger\n");}
          |STRING 						{printf("\n***REGLA 17 -> Tipo_Dato:\n");}
										{printf("\t\t\tString\n");}
		  |FLOAT						{printf("\n***REGLA 18 -> Tipo_Dato:\n");}
										{printf("\t\t\tFloat\n");}
;
          
lista_id:ID   {printf("\n***REGLA 19 -> Lista_Id:\n");}
			{printf("\t\t\tID\n");}
         |ID  COMA lista_id		{printf("\n***REGLA 20 -> Lista_Id:\n");}
								{printf("\t\t\tID COMA Lista_Id\n");}
;

entrada: GET ID PUNTO_COMA		{printf("\n***REGLA 21 -> Entrada: \n");}
								{printf("\t\t\t ID\n");}
;

salida: PUT CTE_STR	PUNTO_COMA	{printf("\n***REGLA 22 -> Salida:\n");}
								{printf("\t\t\t CTE_STR\n");}
       |PUT ID PUNTO_COMA       {printf("\n***REGLA 23 -> Salida:\n");}
								{printf("\t\t\tID\n");}
;

expresiones: expresion COMA expresiones  	{printf("\n***REGLA 24 -> Expresiones:\n");}
											{printf("\t\t\tExpresion COMA Expresiones\n");}
			|expresion						{printf("\n***REGLA 25 -> Expresiones:\n");}
											{printf("\t\t\tExpresion\n");}
;

decision:IF condicion L_A lista_sentencias L_C  {printf("\n***REGLA 26 -> Condicion:\n");}
													{printf("\t\t\t IF Condicion L_A Lista_Sentencias L_C\n");}
         |IF condicion L_A lista_sentencias L_C ELSE L_A lista_sentencias L_C
				{printf("\n***REGLA 27 -> Condicion:\n");}
				{printf("\t\t\t IF Condicion L_A Lista_Sentencias L_C ELSE L_A Lista_Sentencias L_C\n");}	
;

condicion: P_A condicion_simple P_C	{printf("\n***REGLA 28 -> Condicion:\n");}
									{printf("\t\t\t Condicion_Simple\n");}
          |P_A condicion_doble P_C 	{printf("\n***REGLA 29 -> Condicion:\n");}
									{printf("\t\t\t CONDICION_Doble\n");}
		  |P_A NOT condicion_simple P_C 	{printf("\n***REGLA 30 -> Condicion:\n");}
											{printf("\t\t\t NOT Condicion_Simple\n");}
;
condicion_simple:expresion MAYOR expresion  {printf("\n***REGLA 31 -> Condicion_Simple:\n");}
											{printf("\t\t\t Expresion MAYOR Expresion\n");}
                |expresion MENOR expresion  {printf("\n***REGLA 32 -> Condicion_Simple:\n");}
											{printf("\t\t\t Expresion MENOR Expresion\n");}
                |expresion DIST expresion 	{printf("\n***REGLA 33 -> Condicion_Simple:\n");}
											{printf("\t\t\t Expresion DIST Expresion\n");}
                |expresion IGUAL expresion 	{printf("\n***REGLA 34 -> Condicion_Simple:\n");}
											{printf("\t\t\t Expresion IGUAL Expresion\n");}
                |expresion MAY_IG expresion {printf("\n***REGLA 35 -> Condicion_Simple:\n");}
											{printf("\t\t\t Expresion MAY_IG Expresion\n");}
                |expresion MEN_IG expresion {printf("\n***REGLA 36 -> Condicion_Simple:\n");}
											{printf("\t\t\t Expresion MEN_IG Expresion\n");}
;
condicion_doble:condicion_simple AND condicion_simple 	{printf("\n***REGLA 37 -> Condicion_Doble:\n");}
														{printf("\t\t\t Condicion_Simple AND Condicion_Simple\n");}
                |condicion_simple OR condicion_simple 	{printf("\n***REGLA 38 -> Condicion_Doble:\n");}
														{printf("\t\t\t Condicion_Simple OR Condicion_Simple\n");}
;
iteracion:WHILE condicion L_A lista_sentencias L_C   	{printf("\n***REGLA 39 -> Iteracion:\n");}   
														{printf("\t\t\t WHILE Condicion L_A Lista_Sentencias L_C\n");}
;  

expresion: termino 								{printf("\n***REGLA 40 -> Expresion:\n"); }
												{printf("\t\t\t Termino\n");}
          |expresion OPE_SUM termino			{printf("\n***REGLA 41 -> Expresion:\n"); }
												{printf("\t\t\t Expresion OPE_SUM Termino\n");}
		  |expresion OPE_RES termino 			{printf("\n***REGLA 42 -> EXPRESION:\n");}
												{printf("\t\t\t Expresion OPE_RES Termino\n");}

;
termino:factor 								{printf("\n***REGLA 43 -> Termino:\n");}
											{printf("\t\t\t Factor\n");}
	   |P_A expresion P_C				    {printf("\n***REGLA 57 -> Termino:\n");}
											{printf("\t\t\t P_A expresion P_C\n");}
       |termino OPE_MUL factor 				{printf("\n***REGLA 44 -> Termino:\n");}
											{printf("\t\t\t Termino OPE_MUL Factor\n");}
	   |termino OPE_DIV factor 				{printf("\n***REGLA 45 -> Termino:\n");}
											{printf("\t\t\t Termino OPE_DIV Factor\n");}		
;
factor: ID 									{printf("\n***REGLA 46 -> Factor:\n");}
											{printf("\t\t\t ID\n");}
       |CTE_INT 							{printf("\n***REGLA 47 -> Factor:\n");}
											{printf("\t\t\t CTE_INT\n");}
	   |CTE_REAL 							{printf("***REGLA 48 -> Factor:\n");}
											{printf("\t\t\t CTE_REAL\n");}
	   |CTE_STR  							{printf("\n***REGLA 49 -> Factor:\n");}
											{printf("\t\t\t CTE_STR\n");}
	   |maximo       						{printf("\n***REGLA 55 -> Factor:\n");}
											{printf("\t\t\tMaximo\n");}									
;
constante: CONST ID OPE_ASIG CTE_INT PUNTO_COMA		{printf("\n***REGLA 51 -> Constante:\n");}
													{printf("\t\t\t CTE_INT\n");}
		   |CONST ID OPE_ASIG CTE_REAL PUNTO_COMA	{printf("\n***REGLA 52 -> Constante:\n");}
													{printf("\t\t\t CTE_REAL\n");}
		   |CONST ID OPE_ASIG CTE_STR PUNTO_COMA	{printf("\n***REGLA 53 -> Constante:\n");}
													{printf("\t\t\t CTE_STR\n");}
;
maximo: MAXIMO P_A expresiones P_C 			{printf("\n***REGLA 56 -> Maximo:\n");}
											{printf("\t\t\t maximo P_A expresiones P_C\n");}

%%

int main(int argc,char *argv[])
{
  if ((yyin = fopen(argv[1], "rt")) == NULL)
  {
	printf("\nNo se puede abrir el archivo: %s\n", argv[1]);
  }
  else
  {

	yyparse();
	 guardarTS_Archivo();
  }
  fclose(yyin);
  return 0;
}
int yyerror(void)
{
     printf("Syntax Error\n");
	 system ("Pause");
	 exit (1);
}
