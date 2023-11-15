// L�entrada estar� composta per diversos casos de prova. 
// Cada cas de prova tindr�:
// L�nia 1: Descripci� del t�nel. Un car�cter per cada secci� del t�nel (secci� <= 1*10?), 
// - 'T' secci� amb tel�fon 
// - '.' secci� sense 
// - El primer car�cter de la l�nia =  secci� "del costat de la pen�nsula".
// Linia 2: N�mero n amb la quantitat de consultes que v�nen a continuaci�. 
// Linia 3 a n: cadascuna amb un sencer amb la secci� on es troba l'accidentat 
// - entre 1 i el nombre de seccions total
// - sent 1 la primera secci� a la ruta des de la pen�nsula cap a les illes).

Funcion creaSeccions(s Por Referencia)
		s = ".T...T.T.";
FinFuncion

Funcion mostraSeccionsTunel(s)
	Escribir s;
FinFuncion

//sacc: secci� on hi ha accident
//sec: cadena amb secci� del tunel
//r: sortida 0:Pennsula, 1:Eivissa
Funcion r = consulta(sacc, seccio Por Referencia)
	// constants
	NPUNT = ".";
	TPUNT = "T";
	AQUI = "Aqui";
	PEN = "Peninsula";
	ILL = "Eivissa";
	
	// variables 
	tPosEsq = 0; 		// dist�ncia a T esq en base a sacc
	tPosDrt = 0;		// dist�ncia a T drt ...
	dSortidaE = 0;		// dist�ncia sortida Esq en base a sacc
	dSortidaD = 0;		// dist�ncia sortida Drt ...
		
	s = Subcadena(seccio, sacc, 1);
	
	// Estem en una secci� amb tel�fon, llavors "AQUI"
	si s = TPUNT Entonces
		r = AQUI;
	FinSi
	
	l = Longitud(seccio);
	
	// busquem primer T a l'esq
	sortir = Falso;
	i = sacc - 1;
	
	Mientras !sortir | i >= 1
		si Subcadena(seccio,i,1) = TPUNT Entonces
			tPosEsq = i;
			sortir = Verdadero;
		SiNo
			i = i - 1;
		FinSi
	FinMientras
	
	//busquem primer T a la drt
	sortir = Falso;
	i = sacc + 1;
	
	Mientras !sortir | i <= l
		si Subcadena(seccio,i,1) = TPUNT Entonces
			tPosDrt = i;
			sortir = Verdadero;
		SiNo
			i = i + 1;
		FinSi
	FinMientras
	
	dSortidaE = sacc - 1;		// dist�ncia a sortida esq
	dSortidaD = l - sacc;		// dist�ncia sortida drt
	
	// Si sacc m�s a prop d'una sortida que de T :=> direcci� sortida.
	
	
	
FinFuncion


Algoritmo Tuneling
	Definir seccio Como Caracter;
	Definir consultes, saccident Como Entero;
	
	creaSeccions(seccio);
	mostraSeccionsTunel(seccio);
	consultes = 4;
	
	Dimension saccident[consultes];
	saccident[1] = 2; saccident[2] = 3; saccident[3] = 4; saccident[4] = 7;
	
	para i = 1 hasta consultes
		Escribir consulta(saccident[i],seccio);
	FinPara
	
FinAlgoritmo
