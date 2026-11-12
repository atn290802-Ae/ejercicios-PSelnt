Algoritmo Ejercicios_Unidad_4
	
    Definir L, T Como Entero
    Definir i, opcion, numero Como Entero
    Definir suma, contador Como Entero
    Definir tablaCreada Como Logico
	
    Dimension L[50]
    Dimension T[10]
	
    tablaCreada <- Falso
	
    Escribir "EJERCICIOS DE LISTAS"
    Escribir "Introduzca los 50 elementos de la lista."
	
    Para i <- 1 Hasta 50 Hacer
        Escribir "Elemento ", i, ":"
        Leer L[i]
    FinPara
	
    Repetir
		
        Escribir ""
        Escribir "1. Imprimir elementos pares"
        Escribir "2. Sumar elementos en posiciones impares"
        Escribir "3. Contar y sumar impares en posiciones pares"
        Escribir "4. Multiplos de 2 y 3"
        Escribir "5. Tabla de multiplicar"
        Escribir "6. Imprimir tabla en orden inverso"
        Escribir "0. Salir"
        Escribir "Seleccione una opcion:"
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                Escribir "ELEMENTOS PARES:"
                Para i <- 1 Hasta 50 Hacer
                    Si L[i] MOD 2 = 0 Entonces
                        Escribir L[i]
                    FinSi
                FinPara
				
            2:
                suma <- 0
                Escribir "ELEMENTOS EN POSICIONES IMPARES:"
				
                Para i <- 1 Hasta 50 Hacer
                    Si i MOD 2 <> 0 Entonces
                        Escribir "Posicion ", i, ": ", L[i]
                        suma <- suma + L[i]
                    FinSi
                FinPara
				
                Escribir "La suma es: ", suma
				
            3:
                suma <- 0
                contador <- 0
				
                Escribir "IMPARES EN POSICIONES PARES:"
				
                Para i <- 1 Hasta 50 Hacer
                    Si i MOD 2 = 0 Y L[i] MOD 2 <> 0 Entonces
                        Escribir "Posicion ", i, ": ", L[i]
                        suma <- suma + L[i]
                        contador <- contador + 1
                    FinSi
                FinPara
				
                Escribir "La suma es: ", suma
                Escribir "Cantidad de elementos: ", contador
				
            4:
                suma <- 0
                Escribir "MULTIPLOS DE 2 Y 3:"
				
                Para i <- 1 Hasta 50 Hacer
                    Si L[i] MOD 2 = 0 Y L[i] MOD 3 = 0 Entonces
                        Escribir "Posicion ", i, ": ", L[i]
                        suma <- suma + L[i]
                    FinSi
                FinPara
				
                Escribir "La suma es: ", suma
				
            5:
                Escribir "Introduzca un numero:"
                Leer numero
				
                Escribir "TABLA DE MULTIPLICAR:"
				
                Para i <- 1 Hasta 10 Hacer
                    T[i] <- numero * i
                    Escribir numero, " x ", i, " = ", T[i]
                FinPara
				
                Escribir "Elemento de la tercera posicion: ", T[3]
				
                tablaCreada <- Verdadero
				
            6:
                Si tablaCreada Entonces
					
                    Escribir "TABLA EN ORDEN INVERSO:"
					
                    Para i <- 10 Hasta 1 Con Paso -1 Hacer
                        Escribir T[i]
                    FinPara
					
                SiNo
                    Escribir "Primero debe ejecutar el ejercicio 5."
                FinSi
				
            0:
                Escribir "Programa finalizado."
				
            De Otro Modo:
                Escribir "Opcion no valida."
				
        FinSegun
		
    Hasta Que opcion = 0
	
FinAlgoritmo
