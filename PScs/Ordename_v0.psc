Algoritmo Ordename_v0
	Definir V como Entero;
	Dimension V[6];
	
	V[1] = 7; V[2] = 1; V[3] = 5;
	V[4] = 4; V[5] = 2; V[6] = 3;
	
	Definir Ordenat Como Logico;
	Definir inx, aux Como Entero;
	
	Para i = 1 hasta 6
		Escribir Sin Saltar V[i], " ";
	FinPara
	Escribir " ";
	
	// inicialitzem variables 
	Ordenat = Falso;
	inx = 1;
	aux = -1;
	
	Mientras !Ordenat
		Si V[inx] > V[inx+1] Entonces
			aux = V[inx];
			V[inx] = V[inx+1];
			V[inx+1] = aux;
		FinSi
		
		inx = inx + 1;
		
		Si inx >= 6 & aux < 1 Entonces
			Ordenat = Verdadero;
		FinSi
		
		Si inx >= 6 & !Ordenat Entonces
			inx = 1;
			aux = -1;
		FinSi
		
	FinMientras
	
	Para i = 1 hasta 6
		Escribir Sin Saltar V[i], " ";
	FinPara
FinAlgoritmo
