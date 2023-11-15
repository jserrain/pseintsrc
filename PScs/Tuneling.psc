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

Funcion dir = buscaPeligru(seccions, punt)	
	// variables 
	nSeccions = Longitud(seccions);
	dSortidaE = 0;		// dist�ncia sortida Esq en base a sacc
	dSortidaD = 0;		// dist�ncia sortida Drt ...
	dTEsq = 0;
	dTDrt = 0;
	sortir = Falso;
	
	s = Subcadena(seccions, punt, punt);
	
	// Estem en una secci� amb T, llavors "AQUI"
	si s = "T" Entonces
		r = "Aqui";
	SiNo
		// Dist�ncia del punt_accident al T m�s proper
		// busquem primer T a l'esq
		sortir = Falso;
		i = punt - 1; 
		dTEsq = -1;
		Mientras !sortir & i >= 1
			si Subcadena(seccio,i,i) = "T" Entonces
				dTEsq = punt - i;
				sortir = Verdadero;
			SiNo
				i = i - 1;
			FinSi
		FinMientras
		
		// busquem primer T a drt
		sortir = Falso;
		j = punt + 1; 
		dTDrt = -1;
		Mientras !sortir & j <= nSeccions
			si Subcadena(seccio,j,j) = "T" Entonces
				dTDrt =  j - punt;
				sortir = Verdadero;
			SiNo
				j = j + 1;
			FinSi
		FinMientras	
		
		// Dist�ncia del punt_accident a la sortida m�s propera
		dSortidaE = punt - 1;
		dSortidaD = nSeccions - punt;
		
		// a) Si dSortida < dTlf llavors Sortida
		// a.1) Sortida m�s propera
		
		si (dSortidaE < dSortidaD) Entonces
			r = "Pen�nsula";
		SiNo
			r = "Eivissa";
		FinSi
		
		// Si T's m�s propers, esq o drt, estan a la mateixa dist�ncia, triar el que  
		//  est� m�s a prop d'una sortida.
		
		si dTEsq = dTDrt Entonces
			si (dSortidaE < dSortidaD) Entonces
				r = "Pen�nsula";
			SiNo
				r = "Eivissa";
			FinSi
		FinSi
	FinSi
	
	Escribir "resultat buscaPeligru: ", r;
FinFuncion

Algoritmo Tuneling
	Definir seccions Como Caracter;
	Definir nconsultes, accident, accident2 Como Entero;
	
	// cas 1
	creaSeccions(seccions);
	mostraSeccionsTunel(seccions);
	
	nconsultes = 4;
	Dimension accident[nconsultes];
	accident[1] = 2; accident[2] = 3; accident[3] = 4; accident[4] = 7;
	
	para i = 1 hasta nconsultes
		Escribir buscaPeligru(seccions, accident[i]);
	FinPara
	
	// cas 2
	seccions = "...";
	mostraSeccionsTunel(seccions);
	
	nconsultes = 1;
	Dimension accident2[nconsultes];
	accident[1] = 2;
	
	para i = 1 hasta nconsultes
		Escribir buscaPeligru(seccions, accident2[i]);
	FinPara
	
FinAlgoritmo
