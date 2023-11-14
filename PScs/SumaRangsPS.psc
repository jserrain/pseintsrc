Algoritmo SumaRangsPS
	// suma els numeros parells o senars del interval donat
	// Entrada: (p)arells,(s)enars,(f)i
	// Rang: inici, fi  tal que inici < fi
	// Repetir fins a no 'f'i
	
	Definir n, m, x Como Entero;  	// interval miním i màxim
	Definir c Como Caracter;		// acumulem opció del menú
	definir b Como Logico;		// si vol sortir o no
	
	// assignació inicial variables definides
	
	n <- 0;
	m <- 0;
	x <- 0;
	b <- Falso;
	
	Mientras no b Hacer
		Escribir "Entra una opció del següent menú...";
		Escribir "(P) Suma els números parell.";
		Escribir "(S) Suma els números senars.";
		Escribir "(F) fi i sortir del programa.";
		Escribir Sin Saltar "Trieu una opció [P,S,F] : ";
		Leer c;
		
		b <- (c = "F" o c = "f");
		
		Si no b Entonces
			
			Escribir "--- Definició interval ---";
			Escribir Sin Saltar "Natural inferior : ";
			Leer n;
			Escribir Sin Saltar "Natural superior : ";
			Leer m;
			
			x <- 0;
			
			Si c = "P" o c = "p" Entonces
				Para i<-n Hasta m Con Paso 1 Hacer
					si i mod 2 = 0 Entonces
						x <- x + i;
					FinSi
				Fin Para
				
				Escribir "La suma dels números parells és : " , x;
				
			FinSi
			
			Si c = "S" o c = "s" Entonces
				Para i<-n Hasta m Con Paso 1 Hacer
					si i mod 2 <> 0 Entonces
						x <- x + i;
					FinSi
				Fin Para
				
				Escribir "La suma dels números senars és : " , x;
			FinSi
		FinSi
	Fin Mientras
	Escribir "fi del programa";
FinAlgoritmo
