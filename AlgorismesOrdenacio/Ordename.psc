// Entrada: cada l�nia apareixen dues paraules diferents amb lletres en min�scula de no m�s de 10 car�cters. 
// Cap de les paraules t� ny, accents o di�resi. 
// Les paraules, aix� s�, no han de ser v�lides en el nostre idioma (podrien, per exemple, no tenir vocals), 
// encara que es garanteix que mai apareixen m�s de dues seguides.
//
// Sortida: Per cada cas de prova s'escriur� la paraula que abans hauria d'apar�ixer en un diccionari
// anterior a la supressi� dels digrafs.
//# 
// -- Entrada---
// allanar alunizar
// cacho cacique
// cuchillo chocolate
// peruano peru
//
// -- Sortida -- 
// alunizar
// cacique
// cuchillo
// peru

Algoritmo Ordename
	Definir str0, str1 Como Caracter;
	Definir lstr0, lstr1, it Como Entero;
	Definir _1o2 , sortir, _dch, _dll Como Logico;
	
	_1o2 = Falso;			// primer str0?
	
	str0 = "cuchillo";
	str1 = "chocolate";
	
	lstr0 = Longitud(str0);
	lstr1 = Longitud(str1);
	
	// iterem per la paraula m�s curta
	
	si lstr0 <= lstr1 Entonces
		it = lstr0;
	SiNo
		it = lstr1;
	FinSi
	
	Escribir str0, " vs ", str1;
	
	_dch = Falso;
	_dll = Falso;
	sortir = Falso;
	i = 1;
	Repetir
		dstr0 = Subcadena(str0,i,i);
		dstr1 = Subcadena(str1,i,i);
		
		Escribir Sin Saltar "1: [", dstr0, "] ? [", dstr1, "]   ";
		
		// digraf ch?
		si dstr0 = "c" Entonces
			si Subcadena(str0,i+1,i+1) = "h" Entonces
				Escribir "digraf ch";
				_dch = Verdadero;
			FinSi
		FinSi
		
		// digraf ll?
		si dstr0 = "l" Entonces
			si Subcadena(str0, i+1, i+1) = "l" Entonces
				Escribir "digraf ll";
				_dll = Verdadero;
			FinSi
		FinSi
		
		Escribir Sin Saltar "[", dstr0, "] vs [", dstr1, "]   ";
		
		si dstr0 > dstr1 Entonces
			Escribir "dstr0 > dstr1. ";
			_1o2 = Verdadero;
		SiNo
			si dstr0 < dstr1 Entonces
				Escribir "dstr0 < dstr1. ";
			SiNo
				Escribir "dstr0 = dstr1. ";
			FinSi
		FinSi
		i = i + 1;
	Hasta Que sortir | i > it; 
		
FinAlgoritmo
