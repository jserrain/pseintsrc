Algoritmo SumaRangsPS
	// suma els numeros parells o senars del interval donat
	// Entrada: (p)arells,(s)enars,(f)i
	// Rang: inici, fi  tal que inici < fi
	// Repetir fins a no 'f'i
	
	Definir n, m, x Como Entero;  	// interval min�m i m�xim
	Definir c Como Caracter;		// acumulem opci� del men�
	definir b Como Logico;		// si vol sortir o no
	
	// assignaci� inicial variables definides
	
	n <- 0;
	m <- 0;
	x <- 0;
	b <- Falso;
	
	Mientras no b Hacer
		Escribir "Entra una opci� del seg�ent men�...";
		Escribir "(P) Suma els n�meros parell.";
		Escribir "(S) Suma els n�meros senars.";
		Escribir "(F) fi i sortir del programa.";
		Escribir Sin Saltar "Trieu una opci� [P,S,F] : ";
		Leer c;
		
		b <- (c = "F" o c = "f");
		
		Si no b Entonces
			
			Escribir "--- Definici� interval ---";
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
				
				Escribir "La suma dels n�meros parells �s : " , x;
				
			FinSi
			
			Si c = "S" o c = "s" Entonces
				Para i<-n Hasta m Con Paso 1 Hacer
					si i mod 2 <> 0 Entonces
						x <- x + i;
					FinSi
				Fin Para
				
				Escribir "La suma dels n�meros senars �s : " , x;
			FinSi
		FinSi
	Fin Mientras
	Escribir "fi del programa";
FinAlgoritmo
