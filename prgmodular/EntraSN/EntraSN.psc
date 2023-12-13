Funcion Escriure (missatge)
		Escribir missatge;
FinFuncion

Algoritmo EntraSN
	Definir sn Como Caracter;
	definir msg Como Caracter;
	Definir bSN Como Logico;
		
	bSN = Falso;
	
	Repetir
		Escriure("Entra un caràcter (S/N)?");
		Leer sn;
		
		Si sn = "S" | sn = "N" Entonces
			bSN = Verdadero;
		SiNo
			// msg = "Has entrat el caràcter [" + sn + "] però recorda que:";
			msg = Concatenar("Has entrat el caràcter [", sn);
			msg = Concatenar(msg, "] però recorda que:");
			Escriure(msg);
			Escriure("Només pots escriure S o N, torna-ho a provar");
		FinSi
	Hasta Que bSN = Verdadero;
	msg = "Felicitats has escrit [" + sn + "]";
	Escriure(msg);
FinAlgoritmo
