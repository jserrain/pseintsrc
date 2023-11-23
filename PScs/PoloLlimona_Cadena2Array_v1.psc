Algoritmo PoloLlimona_Cadena2Array_v1
	Definir inL1, inL2, inL3 Como Caracter;
	Definir gA, gB Como Entero;
	Definir vA Como Entero;
	Dimensión vA[5];
	
	inL1 = "3 2";
	inL2 = "1 2 2 5 2 4";
	inL3 = "2 1 3 3";
	
	inicialitzaVector(vA, 5);
	
	// Composició de funcions
	gA = ConvertirANumero(Subcadena(inL1,1,1));
	gB = ConvertirANumero(Subcadena(inL1,Longitud(inL1), Longitud(inL1)));
	
	Escribir "gA: [", gA, "] gB: [", gB, "]";
		
	nRep = 0;	// número de repeticions
	nNum = 0;	// número
	aux = "";	// variable auxiliar per llegir caràcter cadena
	sc = "";	// caràcter de la subcadena 
	iV = 1;  	// apuntador/iterador vector vA
	
	Para i = 1 hasta Longitud(inL2)
		sc = Subcadena(inL2,i,i);
		
		si sc = " " Entonces
			si nRep = 0 Entonces
				nRep = ConvertirANumero(aux);
			SiNo
				nNum = ConvertirANumero(aux);
				// afegin grup al vector
				
				Para k = 1 hasta nRep
					vA[k] = nNum;
				FinPara
				
				// inicialitzem variables seguent tupla
				
				nRep = 0;
				nNum = 0;
				gA = gA - 1;
			FinSi
		SiNo
			aux = Concatenar(aux, sc);
			Escribir "sc: ", sc, " aux:", aux;
		FinSi
	FinPara
	
	mostrarVector(vA);
FinAlgoritmo

Funcion mostrarVector(v)
	Para i = 1 hasta 5
		Escribir Sin Saltar v[i], ",";
	FinPara
FinFuncion

Funcion inicialitzaVector(a Por Referencia, d)
	Para i = 1 hasta d
		a[i] = -1;
	FinPara
FinFuncion


