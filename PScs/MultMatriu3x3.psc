Algoritmo MultMatriu3x3
	Definir A, B, r Como Entero;
	Dimension A[3,3];
	Dimension B[3,3];
	Dimension r[3,3];
	
	A[1,1] = 1; A[1,2] = -1; A[1,3] = 1;
	A[2,1] = 2; A[2,2] = 2; A[2,3] = 3;
	A[3,1] = -2; A[3,2] = -3; A[3,3] = -1;
	
	B[1,1] = 1; B[1,2] = 0; B[1,3] = 4;
	B[2,1] = 0; B[2,2] = 2; B[2,3] = 5;
	B[3,1] = 1; B[3,2] = 3; B[3,3] = 0;
	
	
	para i = 1 Hasta 3
		para j = 1 hasta 3
			para k = 1 hasta 3
				r[i,j] = r [i,j] + A[i,k] * B[k,j];
			FinPara
		FinPara
	FinPara
	
	para i = 1 hasta 3
		para j = 1 hasta 3
			Escribir Sin Saltar r[i,j], " ";
		FinPara
		Escribir " ";
	FinPara
	
FinAlgoritmo