Algoritmo EntraSN
	Definir sn Como Caracter;
	Definir bSN Como Logico;
		
	bSN = Falso;
	
	Repetir
		Escribir "Entra un car�cter (S/N)?";
		Leer sn;
		
		Si sn = "S" | sn = "N" Entonces
			bSN = Verdadero;
		SiNo
			Escribir "Has entrat el car�cter [", sn, "] per� recorda que:";
			Escribir "Nom�s pots escriure S o N, torna-ho a provar";
		FinSi
	Hasta Que bSN = Verdadero;
	Escribir "Felicitats has escrit [", sn , "]";
FinAlgoritmo