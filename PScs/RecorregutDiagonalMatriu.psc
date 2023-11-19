// 1DAWMP03UF1
// jserrain@/2311
// Iniciatlitza taulell amb totes les caselles = 0
// t: taulell per referència
Funcion iniMatrix(t Por Referencia)
	para i = 1 hasta 6
		para j = 1 hasta 6
			t[i,j] = 0;
		FinPara
	FinPara
FinFuncion

// Posa un vaixell al taulell
// t: taula per referència
// r: row o fila
// c: column o columna
// m: mida del vaixell
// p: orientació vaixell, tal que 0 = horitzontal, 1 = vertical
Funcion setVaixell(t Por Referencia,r,c,m,p)
	si p = 0 Entonces // horitzontal
		para j = c hasta (c + (m-1))
			t[r,j] = 1;
		FinPara
	SiNo
		para i = r hasta (r + (m-1))
			t[i,c] = 1;
		FinPara
	FinSi
FinFuncion

// Funció que compara dos variables tal que:
// si anterior = 0, actualitza el seu valor amb el contingut de actual
// si anterior = actual = 1, error = TRUE
Funcion e = igualsAntAct(ant Por Referencia, act)
	e = Falso;
	
	Si act = 0 Entonces
		ant = act;
	SiNo
		Si ant = 1 Entonces
			e = verdadero;
		SiNo
			ant = act;
		FinSi
	FinSi
		
FinFuncion

// Valida si una matriu de joc és valida !ATENCIÓ Només fa una part de la matriu!!!
// fa un recorregut per les diagonals tal que: !!Només fa mitjà triu les simètriques NO
// no pot contenir dos posicions consecutives amb un 1
// t: taulell per referència
// s: True o False
Funcion s = validaTaulell(t Por Referencia)
	trobat = Falso;	// C/F segons contingut posicions [i,j] = 1 = [i+1, j+1]
	dM = 6;			// dimensió matriu
	itC = 6;		// iterador columnes
	
	i = 1;
	Mientras  i <= dM & !trobat
		k = 1;
		ant = 0; 		// contingut posició anterior 
		Si i = 1 Entonces
			Mientras k <= dM & !trobat Hacer
				trobat = igualsAntAct(ant, t[k,k]);
				k = k + 1;
			FinMientras
		SiNo
			j = i;
			Mientras k <= itC & !trobat Hacer
				trobat = igualsAntAct(ant,t[j,k]);
				j = j + 1;
				k = k + 1;
			FinMientras
		FinSi
		i = i + 1;
		itC = itC - 1;
	FinMientras
	
FinFuncion

Funcion showMatrix(t)
	Escribir " ";
	para i = 1 hasta 6
		Escribir Sin Saltar "| ";
		para j = 1 hasta 6
			Escribir sin saltar t[i,j], " | ";
		FinPara
		Escribir " ";
	FinPara
FinFuncion

Algoritmo RecorregutDiagonalMatriu
	Definir t Como Entero;
	Definir b Como Logico;;
	Dimension t[6,6];
	
	iniMatrix(t);
	setVaixell(t,1,1,3,0);
	setVaixell(t,4,3,3,0);
	// setVaixell(t,5,3,2,1);  // error ..  però en aquest sentit no el trobat
	
	setVaixell(t,5,4,2,1);  // error ..  però en aquest sentit no el trobat
	
	showMatrix(t);
	
	
	b = validaTaulell(t);
	
	Escribir "El taullell conté errors? ", b;
	
	//setVaixell(t,3,4,3,0);
	//setVaixell(t,6,4,3,0);
	//setVaixell(t,3,2,3,1);
	//setVaixell(t,1,5,2,0);
	
FinAlgoritmo
