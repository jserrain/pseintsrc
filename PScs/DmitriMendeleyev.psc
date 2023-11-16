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

// valida sii la cadena 'c' està formada per lletres de l'alfabet anglès
// e: True or False 
Funcion valida = validaAlfabetAngles(c)
	a = "abcdefghijklmnopqrstuvwxyz";
	valida = Falso;
	
	i = 1;
	Mientras !valida & i <= Longitud(c)
		cc = Subcadena(c,i,i);
		
		trobat = Falso;
		k = 1;
		Mientras k <= 26 & !trobat
			si cc = Subcadena(a,k,k) Entonces
				trobat = Verdadero;
			SiNo
				k = k + 1;
			FinSi
		FinMientras
		
		si k = 27 & !trobat Entonces
			valida = trobat;
		SiNo
			i = i + 1;
		FinSi
		
	FinMientras
	

FinFuncion

Algoritmo DmitriMendeleyev
	Definir v Como Caracter;
	Dimension v[118];
	
	ompleVector(v);
	
	Escribir "valida: Si Programo = ", validaAlfabetAngles("siprogramo");
	Escribir "valida: uso C", validaAlfabetAngles("usoc");
	escribir "valida: i no java", validaAlfabetAngles("inojava");
	
FinAlgoritmo
