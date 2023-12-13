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

// Busca el nombre de vaixells de longitud donada
// t: taulell de joc 6x6
// l: longitud de vaixells a cercar
// n: nombre de vaixells de longitud l
Funcion n = cercaVaixell(t, l)
	// cerca vaixells per files/horitzontal
	n = cercaVaixellHoritzontal(t,l);
	n = n + cercaVaixellVertical(t,l);
FinFuncion

Funcion n = cercaVaixellVertical(t,l)
	sortir = Verdadero;
	n = 0;
	
	j = 1;
	Mientras j <= 6
		i = 1;
		Mientras i <= 6
			Si t[i,j] = 1 Entonces
				sortir = Verdadero;
				m = 1;
				Repetir
					i = i + 1;
					Si i <= 6 & t[i,j] = 1 Entonces
						m = m + 1;					// unitats vaixell
					SiNo
						sortir = Falso;
					FinSi
				Hasta Que (i > 6) | !sortir;
				
				Si m = l Entonces					// comtador vaixells mida l
					n = n + 1;
				FinSi
			FinSi
			i = i + 1;
		FinMientras
		j = j + 1;
	FinMientras	
FinFuncion

Funcion n = cercaVaixellHoritzontal(t,l)
	sortir = Verdadero;
	n = 0;
	i = 1;
	
	Mientras i <= 6
		j = 1;
		Mientras j <= 6
			Si t[i,j] = 1 Entonces
				sortir = Verdadero;
				m = 1;
				Repetir
					j = j + 1;
					Si j <= 6 & t[i,j] = 1 Entonces
						m = m + 1;					// unitats vaixell
					SiNo
						sortir = Falso;
					FinSi
				Hasta Que (j > 6) | !sortir;
				
				Si m = l Entonces					// comtador vaixells mida l
					n = n + 1;
				FinSi
			FinSi
			j = j + 1;
		FinMientras
		i = i + 1;
	FinMientras	
FinFuncion

// Mostra per pantalla el taulell
// t: taulell
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

Funcion exe1(t Por Referencia)
	iniMatrix(t);
	setVaixell(t,1,3,2,0);
	setVaixell(t,3,1,2,0);
	setVaixell(t,6,1,2,0);
	setVaixell(t,3,4,3,1);
	setVaixell(t,1,6,2,1);
	setVaixell(t,5,6,2,1);
		
	showMatrix(t);
	n = cercaVaixell(t,2);
	Escribir "vaixells de mida 2 = ", n;
	n = cercaVaixell(t,3);
	Escribir "vaixells de mida 3 = ", n;
	Escribir " -- ;) -- ";
FinFuncion

Funcion exe2(t Por Referencia)
	iniMatrix(t);
	setVaixell(t,1,1,3,0);
	setVaixell(t,3,4,3,0);
	setVaixell(t,6,4,3,0);
	setVaixell(t,3,2,3,1);
	setVaixell(t,1,5,2,0);
	
	showMatrix(t);
	n = cercaVaixell(t,2);
	Escribir "vaixells de mida 2 = ", n;
	n = cercaVaixell(t,3);
	Escribir "vaixells de mida 3 = ", n;
	Escribir " -- ;) -- ";
FinFuncion

Funcion exe3(t Por Referencia)
	iniMatrix(t);
	setVaixell(t,1,1,3,0);
	setVaixell(t,4,4,3,0);
	setVaixell(t,6,4,3,0);
	setVaixell(t,3,2,3,1);
	setVaixell(t,1,6,2,1);
	
	showMatrix(t);
	n = cercaVaixell(t,2);
	Escribir "vaixells de mida 2 = ", n;
	n = cercaVaixell(t,3);
	Escribir "vaixells de mida 3 = ", n;
	Escribir " -- ;) -- ";
FinFuncion

Algoritmo Vaixells
	Definir t Como Entero;
	Dimension t[6,6];
	
	exe1(t);
	exe2(t);
	exe3(t);
	
FinAlgoritmo
