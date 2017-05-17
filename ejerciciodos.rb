def cuentalineas (abrir)
	contador = 0
	file = File.open(abrir, "r")
	contador = file.readlines.length
	file.close
	puts contador	
end

cuentalineas("texto.txt")
