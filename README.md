# Grupo_17
## Trabajo Practico COMPILADOR

**INTEGRANTES**
35854497 Magnatta, Ezequiel
35068917 Ramos, Maximiliano
34332289 Ruiz, Fernando
38125281 Servis, Brian
30400372 Servis, Paola

**CONSIDERACIONES GENERALES**
Es necesario cumplir con las siguientes consideraciones para evaluar el TP.
1. Cada grupo deberá desarrollar el compilador teniendo en cuenta:
* Todos los temas comunes.
* Los temas especiales asignados a cada grupo.
* El método de generación intermedia que le sea especificado a cada grupo
2. Se fijarán puntos de control con fechas y consignas determinadas
3. Todos los ejecutables deberán correr sobre Windows.

**PRIMERA ENTREGA**
OBJETIVO: Realizar un analizador sintáctico utilizando las herramientas FLEX y BISON. El programa
ejecutable deberá mostrar por pantalla las reglas sintácticas que va analizando el parser en base a un archivo
de entrada (prueba.txt) que será provisto por la cátedra. Las impresiones deben ser claras. Las reglas que no
realizan ninguna acción no deben generar salida. 


**TEMAS COMUNES**
**ITERACIONES**
Implementación de ciclo WHILE

**DECISIONES**
Implementación de IF

**ASIGNACIONES**
Asignaciones simples A:=B

**TIPO DE DATOS**

*Constantes numéricas
? reales (32 bits)
? enteras (16 bits)
El separador decimal será el punto “.”
Ejemplo:
a = 99999.99
a = 99.
a = .9999

*Constantes string
Constantes de 30 caracteres alfanuméricos como máximo, limitada por comillas (“ “) ,de la forma “XXXX”
Ejemplo:
b = “@sdADaSjfla%dfg”
b = “asldk fh sjf”

**VARIABLES**

*Variables numéricas
Estas variables reciben valores numéricos tales como constantes numéricas, variables numéricas u
operaciones que arrojen un valor numérico, del lado derecho de una asignación.
Las variables no guardan su valor en tabla de símbolos.
Las asignaciones deben ser permitidas, solo en los casos en los que los tipos son
compatibles, caso contrario deberá desplegarse un error.

**COMENTARIOS**
Deberán estar delimitados por “*- “ y “-*” y podrán estar anidados en un solo nivel.
Ejemplo1:
*- Realizo una selección -*
IF (a <= 30)
b = ”correcto” *- asignación string -*
ENDIF
Ejemplo2:
 *- Así son los comentarios en el 2°Cuat de LyC *- Comentario -* -*
Los comentarios se ignoran de manera que no generan un componente léxico o token

**ENTRADA Y SALIDA**
Las salidas y entradas por teclado se implementarán como se muestra en el siguiente ejemplo:
Ejemplo:
PUT “ewr” *- donde “ewr” debe ser una cte string -*
GET base *- donde base es una variable -*
PUT var1 *- donde var1 es una vble numérica definida previamente -*

**CONDICIONES**
Las condiciones para un constructor de ciclos o de selección pueden ser simples ( a < b ) o múltiples.
Las condiciones múltiples pueden ser hasta dos condiciones simples ligadas a través del operador lógico
(AND, OR) o una condición simple con el operador lógico NOT

**DECLARACIONES**
Todas las variables deberán ser declaradas de la siguiente manera:
DIM < Lista de Variables> AS < Tipo de Dato >
La Lista de variables debe separarse por comas y delimitada con [], y pueden existir varias líneas DIM.
La lista de variables y la lista de tipos deben coincidir en cantidad de
elementos.
Ejemplos de formato:
DIM <a, b, beta> AS <integer, real, string>
DIM <c> AS <real>

**TEMAS ESPECIALES**

*Constantes Con Nombre
Las constantes con nombre podrán ser reales, enteras, string. El nombre de la constante no debe
existir previamente. Se definen de la forma CONST variable = cte, y tal como indica su definición, no
cambiaran su valor a lo largo de todo el programa.
Las constantes pueden definirse en cualquier parte dentro del cuerpo del
programa.
Ejemplo:
*- Constantes con Nombre -*
CONST pivot = 30
CONST str = ”Ingrese cantidad de días”

*MAXIMO
Calcula el máximo de una lista de expresiones.
Ejemplo: maximo(3*a,b+4,3,4/5+(a*b-d))

