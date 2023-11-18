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

Funcion e = igualsAntAct(ant Por Referencia, act Por Referencia)
	e = Falso;
	
	Si ant = 0 Entonces
		ant = act;
	SiNo 
		si ant = 1 & act = 1 Entonces
			e = Verdadero;
		FinSi
	FinSi
	
FinFuncion

// Valida si una matriu de joc és valida
// fa un recorregut per les diagonals tal que:
// no pot contenir dos posicions consecutives amb un 1
// t: taulell per referència
// s: True o False
Funcion s = validaTaulell(t Por Referencia)
	ant = 0; 		// guardem si vaixell a posició anterior a actual
	act = 0; 		//
	i = 1; 			// index a la matriu
	trobat = Falso;	// Hem trobat un error?
	
	// Diagonal principal
	mientras i <= 6 & !trobat 
		act = t[i,i];
		
		trobat = igualsAntAct(ant, act);
		
		i = i + 1;
	FinMientras
	
	// diagonal inferior
	// imatge i anti imatge
	antL = 0; antH = 0; // hight
	actL = 0; actH = 0; // low
	trobat = Falso;
	
	
	Mientras i <= 6 & !trobat
		
	FinMientras
	
	
	
	para i = 2 hasta 6
		para j = 1 hasta (6 - 1)
			actX = t[i,j];
			trobat = igualsAntAct(antX, ancX);
			
			ActY = t[j,i];
			trobat = igualsAntAct(antY,ActY);
			
			j = j + 1;
		FinPara
		i = i + 1;
	FinPara
	
	
	
	// diagonal superior
	
	
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
	Dimension t[6,6];
	
	iniMatrix(t);
	setVaixell(t,1,1,3,0);
	setVaixell(t,3,4,3,0);
	setVaixell(t,6,4,3,0);
	setVaixell(t,3,2,3,1);
	setVaixell(t,1,5,2,0);
	
	setVaixell(t,4,3,3,0);
	
	showMatrix(t);
FinAlgoritmo
