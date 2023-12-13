// Entrada: Cada línia conté una cadena (de 1 a 10.000 caràcters) amb lletres de l'alfabet anglès tant majúscules com minúscules. 
// Cadenes separades per espais.
// 
// SORTIDA: Per cada cas SI la cadena es pot escriure utilitzant els símbols dels 118 elements químics.
//
// Exemple: 
// Si programo
// uso C
// i no java
// ---+
// SI
// SI
// NO

// omple el vector amb els 118 elements de ta taula periodica
// v: vector per referència
// 
Funcion ompleVector(v Por Referencia)
	e1 = "HBCNOFPSKVYIWU";
	e2_1 = "HeLiBeNeNaMgAlSiClArCaScTiCrMnFeCoNiCuZnGaGeAsSeBrKrRbSrZrNbMoTcRuRhPdAgCdInSnSbTeXeCsBaHfTaReOsIrPtAuHgTlPbBiPoAtRn";
	e2_2 = "FrRaRfDbSgBhHsMtDsRgCnNhFlMcLvTsOgLaCePrNdPmSmEuGdTbDyHoErTmYbLuAcThPaNpPuAmCnBkCfEsFmMdNoLr";
	
	e2 = Concatenar(e2_1, e2_2);
	
	// comple vector n = 1
	para i = 1 hasta Longitud(e1)
		v[i] = Subcadena(e1,i,i);
	FinPara
	
	Escribir " ";
	k = Longitud(e1) + 1;
	para j = 1 hasta longitud(e2) con paso 2
		v[k] = Subcadena(e2,j,j+1);
		Escribir k, ": ", v[k];
		k = k + 1;
	FinPara
FinFuncion

// Donada una cadena busca elements taula periodica
Funcion cercaElement(se)
	e1 = "HBCNOFPSKVYIWU";
	e2_1 = "HeLiBeNeNaMgAlSiClArCaScTiCrMnFeCoNiCuZnGaGeAsSeBrKrRbSrZrNbMoTcRuRhPdAgCdInSnSbTeXeCsBaHfTaReOsIrPtAuHgTlPbBiPoAtRn";
	e2_2 = "FrRaRfDbSgBhHsMtDsRgCnNhFlMcLvTsOgLaCePrNdPmSmEuGdTbDyHoErTmYbLuAcThPaNpPuAmCnBkCfEsFmMdNoLr";
	
	e2 = Concatenar(e2_1, e2_2);
	
	
	
	
FinFuncion

// valida sii la cadena 'c' està formada per lletres de l'alfabet anglès
// e: True or False 
Funcion valid = validaAlfabetAngles(c)
	a = "abcdefghijklmnopqrstuvwxyz";
	tilt = Falso;
	
	i = 1;		// apuntador a caracter cadena 'c'
	Mientras !tilt & i <= Longitud(c)
		cc = minusculas(Subcadena(c,i,i));
		si cc <> " " Entonces
			k = 1; // apuntador a la primera lletra cadena 'a'
			trobat = Falso;
			Mientras !trobat & k <= 26
				ck = Subcadena(a,k,k);
				si cc = ck Entonces
					trobat = Verdadero;
				FinSi
				k = k + 1;
			FinMientras
			
			si k > 26 Entonces
				tilt = Verdadero;
			FinSi
		FinSi
		i = i + 1;
	FinMientras
	
	valid = !tilt;
	
FinFuncion

Algoritmo DmitriMendeleyev
	Definir v Como Caracter;
	Dimension v[118];
	
	// ompleVector(v);
	
	Escribir "valida: Si Programo : ", validaAlfabetAngles("Si Programo");
	Escribir "valida: uso C : ", validaAlfabetAngles("uso C");
	escribir "valida: i no Java : ", validaAlfabetAngles("i no Java");
	
FinAlgoritmo
