Funcion e = ompleVector(v Por Referencia)
	e = -1; // error flag
	
	e1 = "HBCNOFPSKVYIWU";
	e2_1 = "HeLiBeNeNaMgAlSiClArCaScTiCrMnFeCoNiCuZnGaGeAsSeBrKrRbSrZrNbMoTcRuRhPdAgCdInSnSbTeXeCsBaHfTaReOsIrPtAuHgTlPbBiPoAtRn";
	e2_2 = "FrRaRfDbSgBhHsMtDsRgCnNhFlMcLvTsOgLaCePrNdPmSmEuGdTbDyHoErTmYbLuAcThPaNpPuAmCnBkCfEsFmMdNoLr";
	
	e2 = Concatenar(e2_1, e2_2);
	
	// comple vector n = 1
	para i = 1 hasta Longitud(e1)
		v[i] = Subcadena(e1,i,i);
	FinPara
	
	Escribir " ";
	n = Longitud(e1);
	para j = 1 hasta longitud(e2) con paso 2
		v[n+j] = Subcadena(e2,j,j+1);
		Escribir n+j, ": ", v[n+j];
	FinPara
FinFuncion

Algoritmo DmitriMendeleyev
	Definir v Como Caracter;
	Dimension v[300];
	
	e = ompleVector(v);
	
	
	
	
FinAlgoritmo
