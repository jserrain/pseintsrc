Algoritmo FreqLletres
	// definim constant total caracters A..Z
	MIDA <- 26;
	
	// definició de variables
	Definir comptador Como Entero;
	Dimension comptador[MIDA];
	
	Definir ABCD, frase, c Como Caracter;
	Definir j, i Como Entero;
	
	Definir trobat Como Logico;
	
	ABCD <- "abcdefghijklmnopqrstuvwxyz"; // mida = 26!!
	i <- 0; j <- 0;
	
	// inicialització array comptador 
	Para i <- 1 hasta MIDA
		comptador[i] <- 0;
	FinPara
	
	Escribir "Entra una frase: "; 
	Leer frase;
	
	Para i <- 1 hasta Longitud(frase)
		c <- Subcadena(frase, i, i);
		Escribir "contingut c = [", c, "]";
				
		si c <> " " Entonces // saltem espais 
			j <- 1;
			trobat <- Falso;
			
			Repetir
				trobat <- (c = subcadena(ABCD,j, j));
				Si no trobat Entonces
					j <- j + 1;
				SiNo
					comptador[j] <- comptador[j] + 1;
				FinSi
			Hasta Que trobat o j > MIDA;
		FinSi
	FinPara
	
	Escribir "-- Resultat freqüència --";
	
	para i <- 1 hasta MIDA
		Escribir "[", subcadena(ABCD, i, i), "] = ", comptador[i];
	FinPara
	
FinAlgoritmo
