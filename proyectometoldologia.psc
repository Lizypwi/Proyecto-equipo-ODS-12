Algoritmo PROYECTOMETODOLOGIA
	Definir precioPET, precioCarton, precioAluminio, precioVidrio Como Real
	Definir kgPET, kgCarton, kgAluminio, kgVidrio Como Real
	Definir totalGeneral, porcPET, porcCarton, porcAluminio, porcVidrio Como Real
	Definir ingresoPET, ingresoCarton, ingresoAluminio, ingresoVidrio, ingresoTotal Como Real
	Definir dia, aumento, nuevoIngresoTotal, temp Como Real
	Definir opcion Como Entero
	
	kgPET <- 0
	kgCarton <- 0
	kgAluminio <- 0
	kgVidrio <- 0
	precioPET <- 0
	precioCarton <- 0
	precioAluminio <- 0
	precioVidrio <- 0
	
	Repetir
		
		Escribir "===== MENU PRINCIPAL ====="
		Escribir "1) Capturar precios por kilo"
		Escribir "2) Capturar kilos por dia (7 dias)"
		Escribir "3) Mostrar reportes"
		Escribir "4) Simular aumento de precios"
		Escribir "5) Salir"
		Escribir "Elige una opcion: "
		Leer opcion
		
		Segun opcion Hacer
			1:
				Repetir
					Escribir "Precio por kilo de PET:"
					Leer precioPET
				Hasta Que precioPET > 0
				
				Repetir
					Escribir "Precio por kilo de Carton:"
					Leer precioCarton
				Hasta Que precioCarton > 0
				
				Repetir
					Escribir "Precio por kilo de Aluminio:"
					Leer precioAluminio
				Hasta Que precioAluminio > 0
				
				Repetir
					Escribir "Precio por kilo de Vidrio:"
					Leer precioVidrio
				Hasta Que precioVidrio > 0
				
				Escribir "Precios guardados correctamente."
				
			2:
				Escribir ""
				Escribir "Captura de kilos por material (7 dias)"
				
				kgPET <- 0
				kgCarton <- 0
				kgAluminio <- 0
				kgVidrio <- 0
				
				Para dia <- 1 Hasta 7 Con Paso 1 Hacer
					Escribir ""
					Escribir "Dia ", dia, ":"
					
					Repetir
						Escribir "  Kilos de PET:"
						Leer temp
					Hasta Que temp >= 0 Y temp <= 1000
					kgPET <- kgPET + temp
					
					Repetir
						Escribir "  Kilos de Carton:"
						Leer temp
					Hasta Que temp >= 0 Y temp <= 1000
					kgCarton <- kgCarton + temp
					
					Repetir
						Escribir "  Kilos de Aluminio:"
						Leer temp
					Hasta Que temp >= 0 Y temp <= 1000
					kgAluminio <- kgAluminio + temp
					
					Repetir
						Escribir "  Kilos de Vidrio:"
						Leer temp
					Hasta Que temp >= 0 Y temp <= 1000
					kgVidrio <- kgVidrio + temp
				FinPara
				
				Escribir "Datos de kilos registrados correctamente."
				
			3:
				totalGeneral <- kgPET + kgCarton + kgAluminio + kgVidrio
				
				Si totalGeneral = 0 Entonces
					Escribir "No hay datos registrados todavía."
				Sino
					porcPET <- (kgPET * 100) / totalGeneral
					porcCarton <- (kgCarton * 100) / totalGeneral
					porcAluminio <- (kgAluminio * 100) / totalGeneral
					porcVidrio <- (kgVidrio * 100) / totalGeneral
					
					ingresoPET <- kgPET * precioPET
					ingresoCarton <- kgCarton * precioCarton
					ingresoAluminio <- kgAluminio * precioAluminio
					ingresoVidrio <- kgVidrio * precioVidrio
					ingresoTotal <- ingresoPET + ingresoCarton + ingresoAluminio + ingresoVidrio
					
					Escribir ""
					Escribir "----- REPORTE GENERAL -----"
					Escribir "Material      Kilos   %Participacion   IngresoEstimado"
					Escribir "PET:          ", kgPET, " kg   ", porcPET, "%   $", ingresoPET
					Escribir "Carton:       ", kgCarton, " kg   ", porcCarton, "%   $", ingresoCarton
					Escribir "Aluminio:     ", kgAluminio, " kg   ", porcAluminio, "%   $", ingresoAluminio
					Escribir "Vidrio:       ", kgVidrio, " kg   ", porcVidrio, "%   $", ingresoVidrio
					Escribir "----------------------------------------"
					Escribir "TOTAL GENERAL: ", totalGeneral, " kg"
					Escribir "Ingreso total estimado: $", ingresoTotal
					
					Si kgPET > kgCarton Y kgPET > kgAluminio Y kgPET > kgVidrio Entonces
						Escribir "Material top de la semana: PET"
					Sino
						Si kgCarton > kgPET Y kgCarton > kgAluminio Y kgCarton > kgVidrio Entonces
							Escribir "Material top de la semana: Carton"
						Sino
							Si kgAluminio > kgPET Y kgAluminio > kgCarton Y kgAluminio > kgVidrio Entonces
								Escribir "Material top de la semana: Aluminio"
							Sino
								Escribir "Material top de la semana: Vidrio"
							FinSi
						FinSi
					FinSi
					
					Si porcPET > 25 Entonces
						Escribir "ALERTA: PET supera el 25% del total. Sugerir campaña de reduccion."
					FinSi
				FinSi
				
			4:
				Escribir "Porcentaje de aumento (ej. 10 = 10%):"
				Leer aumento
				Si aumento > -100 Entonces
					nuevoIngresoTotal <- ingresoTotal * (1 + aumento / 100)
					Escribir "Ingreso actual: $", ingresoTotal
					Escribir "Ingreso con aumento de ", aumento, "%: $", nuevoIngresoTotal
					Escribir "Diferencia: $", nuevoIngresoTotal - ingresoTotal
				Sino
					Escribir "Aumento inválido."
				FinSi
				
			5:
				Escribir "Saliendo del programa..."
				
			De Otro Modo:
				Escribir "Opción no válida."
		FinSegun
		
	Hasta Que opcion =5 
	
FinAlgoritmo