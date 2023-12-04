Algoritmo insertSort
	Definir V, n, temp, j Como Entero;
	n = 5; j = 0;
	
	Dimension V[n];
	
	V[1] = 9; V[2] = 5; V[3] = 1; V[4] = 3; V[5] = 2;
	
	Escribir "Insert Sort";
	Para i = 1 Hasta n
		Escribir sin saltar V[i], " ";
	FinPara
	Escribir " ";
	
	Para i = 1 hasta n
		temp = V[i];
		j = i;
		
		Mientras j > 1 & temp < V[j-1]
			V[j] = V[j-1];
			j = j - 1;
		FinMientras
		V[j] = temp;
	FinPara
	
	Escribir "Solució ... ";
	Para i = 1 Hasta n
		Escribir Sin Saltar V[i], " ";
	FinPara
	Escribir " ";
FinAlgoritmo
