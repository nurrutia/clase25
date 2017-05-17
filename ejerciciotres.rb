def cuentalineas (abrir, a)
	arreglo = []
	contador = 0
	contadorcoicidencia = 0
	file = File.open(abrir, "r")
	contents = file.readlines()
	
	contents.each do |value|
		arreglo = value.split(" ")
		contador = contador + arreglo.length
		arreglo.each do |value2|
			if value2.to_s == a.to_s
				contadorcoicidencia = contadorcoicidencia + 1 
			end
		end
	end
	file.close
	puts contador 
	puts contadorcoicidencia
end
cuentalineas("texto.txt" ,"molestiae")