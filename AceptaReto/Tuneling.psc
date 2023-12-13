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

Funcion dir = buscaPeligru(seccions, punt)	
	// variables 
	nSeccions = Longitud(seccions);
	dSortidaE = 0;		// distància sortida Esq en base a sacc
	dSortidaD = 0;		// distància sortida Drt ...
	dTEsq = 0;
	dTDrt = 0;
	sortir = Falso;
	
	s = Subcadena(seccions, punt, punt);
	
	// Estem en una secció amb T, llavors "AQUI"
	si s = "T" Entonces
		r = "Aqui";
	SiNo
		// Distància del punt_accident al T més proper
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
		
		// Distància del punt_accident a la sortida més propera
		dSortidaE = punt - 1;
		dSortidaD = nSeccions - punt;
		
		// a) Si dSortida < dTlf llavors Sortida
		// a.1) Sortida més propera
		
		si (dSortidaE < dSortidaD) Entonces
			r = "Península";
		SiNo
			r = "Eivissa";
		FinSi
		
		// Si T's més propers, esq o drt, estan a la mateixa distància, triar el que  
		//  està més a prop d'una sortida.
		
		si dTEsq = dTDrt Entonces
			si (dSortidaE < dSortidaD) Entonces
				r = "Península";
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
