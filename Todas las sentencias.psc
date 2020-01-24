Proceso TODOS //Creado por Profesor Mario Larenas
		
	Repetir
	BORRAR PANTALLA;
	
	Escribir "*** INTRODUZCA OPCION***";
	Escribir "";
	Escribir "1.Secuencial:";
	Escribir "2.Condicional si entonces:";
	Escribir "3.Condicional si entonces anidado:"
	Escribir "4.Condicional segun:";
	Escribir "5.Repetitiva Mientras";
	Escribir "6.Repetitiva Repetir";
	Escribir "7.repetitiva Para";
	Escribir "8.Arreglo Simple";
	Escribir "9.Arreglo Multiple";
	Escribir "10.SALIR";
	Leer opcion;
	
	Segun opcion Hacer
		
		"1": Secuencial()
		"2": condicional_si_entonces()
		"3": condicional_si_entonces_anidado()
		"4": segunn()
		"5": mientrass()
		"6": repetirhasta()
		"7": Para_FOR()
		"8": arreglos()
		"9": arreglosmultiples()
		
	 FinSegun;
	
	Hasta Que opcion ="10"	
	

FinProceso

//"1.Secuencial:"

SubProceso Secuencial
	Definir Promedio Como Real;
	Definir Suma,A,B,C Como Entero;
	Escribir "Ingrese tres valores:";
	Leer A,B,C;
	Escribir "Los valores ingresados son: ";
	Escribir A," ",B," ",C;
	Suma = A+B+C;
	Promedio = (Suma/3);
	Escribir "El promedio de los valores ingresados es:",Promedio;
	ESPERAR TECLA;
FinSubProceso

//"2.Condicional si entonces:"

subproceso condicional_si_entonces
	
	definir costototal como real
	definir costo1, costo2, costo3, costoplato como entero
	
	costo1= 9500
	costo2= 8500
	costo3= 7500
	
	Escribir "Ingrese para cuantas personas necesita la cotización: ";
	Leer personas;
	
	Si personas <= 200 y personas > 0 Entonces
		costoplato=costo1
	finsi
	
	si personas >200 y personas <= 300 entonces
		costoplato=costo2
	finsi	
	
	si personas>300 Entonces
		costoplato=costo3
	FinSi
	
	costototal=costoplato*personas
	
	Escribir "El valor total es $", costototal;
	ESPERAR TECLA;
Finsubproceso

//"3.Condicional si entonces anidado:"

subproceso condicional_si_entonces_anidado
	
	definir costototal como real
	definir costo1, costo2, costo3, costoplato como entero
	
	costo1= 9500
	costo2= 8500
	costo3= 7500
	
	Escribir "Ingrese para cuantas personas necesita la cotización: ";
	Leer personas;
	
	Si personas <= 200 y personas > 0 Entonces
		costoplato=costo1
	SINO 
		si personas >200 y personas <= 300 entonces
			costoplato=costo2
		SINO 
			si personas>300 Entonces
				costoplato=costo3
			FinSi	
		finsi
	finsi
	ESPERAR TECLA;
finsubproceso

//"4.Condicional segun:";

subProceso segunn
	
	Escribir "Ingrese un numero del 1 al 10";
	
	Leer opcion;
	
	
	Segun opcion Hacer
		"1": Escribir "Ud Ingreso el numero uno";
		"2": Escribir "Ud Ingreso el numero dos";
		"3": Escribir "Ud Ingreso el numero tres";
		"4": Escribir "Ud Ingreso el numero cuatro";
		"5": Escribir "Ud Ingreso el numero cinco";
		"6": Escribir "Ud Ingreso el numero seis";
		"7": Escribir "Ud Ingreso el numero siete";
		"8": Escribir "Ud Ingreso el numero ocho";
		"9": Escribir "Ud Ingreso el numero nueve";
		"1o":Escribir "Ud Ingreso el numero diez";
			
		De Otro Modo:
			Escribir "Opcion no valida";
	FinSegun 
	ESPERAR TECLA
	ESPERAR TECLA;
	
FinsubProceso

//"5.Repetitiva Mientras";

subproceso mientrass
	
	intentos<-10
	num_secreto <- azar(100)+1
	
	Escribir "Adivine el numero (de 1 a 100):"
	Leer num_ingresado
	Mientras num_secreto<>num_ingresado Y intentos>1 Hacer
		Si num_secreto>num_ingresado Entonces
			Escribir "Muy bajo"
		SiNo 
			Escribir "Muy alto"
		FinSi
		intentos <- intentos-1
		Escribir "Le quedan ",intentos," intentos:"
		Leer num_ingresado
	FinMientras
	
	Si num_secreto=num_ingresado Entonces
		Escribir "Exacto! Usted adivino en ",11-intentos," intentos."
	SiNo
		Escribir "El numero era: ",num_secreto
	FinSi
	ESPERAR TECLA;
Finsubproceso

//"6.Repetitiva Repetir";

subProceso repetirhasta
	Definir nombre Como cadena;
	definir cont como entero
	cont=0

	Repetir   // sentencia repetitiva 
		      //
		escribir"Ingrese su nombre"
		leer nombre
		cont=cont+1
	Hasta Que nombre="juan"
	
	Escribir "Tu nombre es Juan "
	Escribir "Para llegar a tu nombre se ingresaron: ", cont, " intentos"
	ESPERAR TECLA;
FinsubProceso

//"7.repetitiva Para";

subProceso Para_FOR
	Definir acumulador,contador Como Entero;
	acumulador = 0;
	Escribir "Ingrese un natural para sacar la suma de el cuadrado de naturales hasta n: "
	Leer n
	Para contador=1 Hasta n Hacer
		acumulador = contador*contador+acumulador;
	FinPara
	Escribir "La suma del cuadrado de los ", n, " primeros naturales es: ",acumulador;
	ESPERAR TECLA;	
FinsubProceso

//"8.Arreglo Simple";

subproceso arreglos
	
	Dimension alumnos[20]
	Dimension rut[20]
	
	Escribir "Ingrese la cantidad de alumnos (de 1 a 20):"
	Leer n
	
	Para i<-1 Hasta n Hacer
		Escribir "Ingrese nombre alumno",i,":"
		Leer alumnos[i]
		Escribir "Ingrese rut del alumno",i,":"
		Leer rut[i]
	FinPara
	
	Para i<-1 Hasta n Hacer
		Escribir "El alumno ",alumnos[i] "Tiene como rut: ",rut[i]	
	FinPara
	
	ESPERAR TECLA;
Finsubproceso


//"9.Arreglo Multiple";


subproceso arreglosmultiples
	
	//definir tv como entero
	
	Dimension ventas[3,5];
	
	para empleado<-1 hasta 3 hacer
		para dia<-1 hasta 5 hacer
			
			escribir "Ingrese venta del empleado ",empleado, " del dia ", dia " :"
			Leer ventas[empleado,dia]
		finpara		
	FinPara
	
	imprimir ""
	imprimir ""
	
	para empleado<-1 hasta 3 hacer
		para dia<-1 hasta 5 hacer
			
			escribir "Las ventas del empleado ",empleado, " son ",ventas[empleado,dia]
			
	    finpara
		
	FinPara
	ESPERAR TECLA;
finsubproceso
	
