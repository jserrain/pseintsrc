Funcion Escriure (numero_de_missatge, valor_sn)
	Segun numero_de_missatge Hacer
		1:
			missatge = "Entra un car�cter (S/N)?";
		2:
			missatge = "Has entrat el car�cter [" + valor_sn + "] per� recorda que:";
		3:
			missatge = "Nom�s pots escriure S o N, torna-ho a provar";
		4:
			missatge = "Felicitats has escrit [" + valor_sn + "]";
	Fin Segun
	Escribir missatge;
FinFuncion

Algoritmo EntraSN
	Definir sn Como Caracter;
	Definir bSN Como Logico;
	bSN = Falso;
	
	Repetir
		Escriure(1,sn);
		Leer sn;
		
		Si sn = "S" | sn = "N" Entonces
			bSN = Verdadero;
		SiNo
			Escriure(2,sn);
			Escriure(3,sn);
		FinSi
	Hasta Que bSN = Verdadero;
	Escriure(4,sn);
FinAlgoritmo