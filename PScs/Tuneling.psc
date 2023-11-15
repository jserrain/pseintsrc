// L´entrada estarà composta per diversos casos de prova. 
// Cada cas de prova tindrà:
// Línia 1: Descripció del túnel. Un caràcter per cada secció del túnel (secció <= 1*10?), 
// - 'T' secció amb telèfon 
// - '.' secció sense 
// - El primer caràcter de la línia =  secció "del costat de la península".
// Linia 2: Número n amb la quantitat de consultes que vénen a continuació. 
// Linia 3 a n: cadascuna amb un sencer amb la secció on es troba l'accidentat 
// - entre 1 i el nombre de seccions total
// - sent 1 la primera secció a la ruta des de la península cap a les illes).

Funcion creaSeccions(s Por Referencia)
		s = ".T...T.T.";
FinFuncion

Funcion mostraSeccionsTunel(s)
	Escribir s;
FinFuncion

//sacc: secció on hi ha accident
//sec: cadena amb secció del tunel
//r: sortida 0:Pennsula, 1:Eivissa
Funcion r = consulta(sacc, seccio Por Referencia)
	// constants
	NPUNT = ".";
	TPUNT = "T";
	AQUI = "Aqui";
	PEN = "Peninsula";
	ILL = "Eivissa";
	
	// variables 
	tPosEsq = 0; 		// distància a T esq en base a sacc
	tPosDrt = 0;		// distància a T drt ...
	dSortidaE = 0;		// distància sortida Esq en base a sacc
	dSortidaD = 0;		// distància sortida Drt ...
		
	s = Subcadena(seccio, sacc, 1);
	
	// Estem en una secció amb telèfon, llavors "AQUI"
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
	
	dSortidaE = sacc - 1;		// distància a sortida esq
	dSortidaD = l - sacc;		// distància sortida drt
	
	// Si sacc més a prop d'una sortida que de T :=> direcció sortida.
	
	
	
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
