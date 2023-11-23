Algoritmo PoloLlimona_Cadena2Array_v1
	Definir inL1, inL2, inL3 Como Caracter;
	Definir gA, gB Como Entero;
	Definir vA, vB Como Entero;
	
	inL1 = "3 2";
	
	// de cada grup el primer component: indica el nombre/repeticions, segon component: numero
	// Atenció: la suma dels primer components ens dona la Dimensi del vector
	// exemple 10+2+2 = 14
	
	inL2 = "10 2 2 5 2 4";
	inL3 = "4 1 10 3";
	
	// Composició de funcions
	gA = ConvertirANumero(Subcadena(inL1,1,1));
	gB = ConvertirANumero(Subcadena(inL1,Longitud(inL1), Longitud(inL1)));
	
	Escribir "gA: [", gA, "] gB: [", gB, "]";
	
	Dimension vA[gA,2];
	Dimension vB[gB,2];
	
	cs = "";					// caràcter de la subcadena 
	i = 1;						// iterador per trobar espais
	j = 1;						// iterador token
	
	Para it = 1 hasta gA 		// iterem n grups
		op = 1;					// op1 i op2
		fiGrup = Falso;
		Repetir
			cs = Subcadena(inL2,i,i);
			Si cs = " " Entonces		// liru liruuuuu!!!
				vA[it,op] = ConvertirANumero(Subcadena(inL2,j,i-1));
				si op = 1 Entonces
					op = 2;
				SiNo
					fiGrup = Verdadero;
				FinSi
				j = i + 1;		// posició
			FinSi
			i = i + 1;
		Hasta Que fiGrup;
		Escribir "Contingut vA[",it,",1]: ", vA[it,1], " vA[",it,",2]:", vA[it,2];
	FinPara
FinAlgoritmo
