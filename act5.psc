Proceso act5
	Definir seguir como Logico;
	Definir cont,cantproductos,prodaceptados,prodrechazados,valornut,opcion como Entero;
	Escribir "Ingrese la cantidad de productos a evaluar: ";
	Leer cantproductos;
	prodaceptados = 0;
	prodrechazados = 0;
	Para cantproductos = 1 Hasta cantproductos Hacer
		cont = 1;
		seguir = Verdadero;
		Mientras seguir Y cont <> 5 Hacer
			Escribir "Ingrese valor nutricional para producto n",cantproductos,": ";
			Leer valornut;
			Escribir "Elija cálculo 1-4";
			Leer opcion;
			Segun opcion Hacer
				1:
					Si valornut < 100 O valornut >200 Entonces
						seguir = !seguir;
					FinSi
				2:
					Si valornut > 15 Entonces
						seguir = !seguir;
					FinSi
				3:
					Si valornut < 1 O valornut >13 Entonces
						seguir = !seguir;
					FinSi
				4:
					Si valornut > 2 Entonces
						seguir = !seguir;
					FinSi
				De Otro Modo:
					Escribir "Cálculo fallido";
					seguir = !seguir;
			FinSegun
			cont = cont + 1;
		FinMientras
		Si seguir = Falso Entonces
			prodrechazados = prodrechazados + 1;
		SiNo
			prodaceptados = prodaceptados + 1;
		FinSi
	FinPara
	Escribir "La cantidad de productos aceptados fue de: ",prodaceptados," y de rechazados: ",prodrechazados;
FinProceso
