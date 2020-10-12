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
1. Cada grupo deber� desarrollar el compilador teniendo en cuenta:
* Todos los temas comunes.
* Los temas especiales asignados a cada grupo.
* El m�todo de generaci�n intermedia que le sea especificado a cada grupo
2. Se fijar�n puntos de control con fechas y consignas determinadas
3. Todos los ejecutables deber�n correr sobre Windows.

**PRIMERA ENTREGA**
OBJETIVO: Realizar un analizador sint�ctico utilizando las herramientas FLEX y BISON. El programa
ejecutable deber� mostrar por pantalla las reglas sint�cticas que va analizando el parser en base a un archivo
de entrada (prueba.txt) que ser� provisto por la c�tedra. Las impresiones deben ser claras. Las reglas que no
realizan ninguna acci�n no deben generar salida. 


**TEMAS COMUNES**
**ITERACIONES**
Implementaci�n de ciclo WHILE

**DECISIONES**
Implementaci�n de IF

**ASIGNACIONES**
Asignaciones simples A:=B

**TIPO DE DATOS**

*Constantes num�ricas
? reales (32 bits)
? enteras (16 bits)
El separador decimal ser� el punto �.�
Ejemplo:
a = 99999.99
a = 99.
a = .9999

*Constantes string
Constantes de 30 caracteres alfanum�ricos como m�ximo, limitada por comillas (� �) ,de la forma �XXXX�
Ejemplo:
b = �@sdADaSjfla%dfg�
b = �asldk fh sjf�

**VARIABLES**

*Variables num�ricas
Estas variables reciben valores num�ricos tales como constantes num�ricas, variables num�ricas u
operaciones que arrojen un valor num�rico, del lado derecho de una asignaci�n.
Las variables no guardan su valor en tabla de s�mbolos.
Las asignaciones deben ser permitidas, solo en los casos en los que los tipos son
compatibles, caso contrario deber� desplegarse un error.

**COMENTARIOS**
Deber�n estar delimitados por �*- � y �-*� y podr�n estar anidados en un solo nivel.
Ejemplo1:
*- Realizo una selecci�n -*
IF (a <= 30)
b = �correcto� *- asignaci�n string -*
ENDIF
Ejemplo2:
 *- As� son los comentarios en el 2�Cuat de LyC *- Comentario -* -*
Los comentarios se ignoran de manera que no generan un componente l�xico o token

**ENTRADA Y SALIDA**
Las salidas y entradas por teclado se implementar�n como se muestra en el siguiente ejemplo:
Ejemplo:
PUT �ewr� *- donde �ewr� debe ser una cte string -*
GET base *- donde base es una variable -*
PUT var1 *- donde var1 es una vble num�rica definida previamente -*

**CONDICIONES**
Las condiciones para un constructor de ciclos o de selecci�n pueden ser simples ( a < b ) o m�ltiples.
Las condiciones m�ltiples pueden ser hasta dos condiciones simples ligadas a trav�s del operador l�gico
(AND, OR) o una condici�n simple con el operador l�gico NOT

**DECLARACIONES**
Todas las variables deber�n ser declaradas de la siguiente manera:
DIM < Lista de Variables> AS < Tipo de Dato >
La Lista de variables debe separarse por comas y delimitada con [], y pueden existir varias l�neas DIM.
La lista de variables y la lista de tipos deben coincidir en cantidad de
elementos.
Ejemplos de formato:
DIM <a, b, beta> AS <integer, real, string>
DIM <c> AS <real>

**TEMAS ESPECIALES**

*Constantes Con Nombre
Las constantes con nombre podr�n ser reales, enteras, string. El nombre de la constante no debe
existir previamente. Se definen de la forma CONST variable = cte, y tal como indica su definici�n, no
cambiaran su valor a lo largo de todo el programa.
Las constantes pueden definirse en cualquier parte dentro del cuerpo del
programa.
Ejemplo:
*- Constantes con Nombre -*
CONST pivot = 30
CONST str = �Ingrese cantidad de d�as�

*MAXIMO
Calcula el m�ximo de una lista de expresiones.
Ejemplo: maximo(3*a,b+4,3,4/5+(a*b-d))

