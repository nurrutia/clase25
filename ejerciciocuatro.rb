file = File.open("productos.txt", "r")
data = file.readlines
file.close
opcion = 1

while opcion != 4
	

	puts ""
	puts "ingrese opcion"
	opcion = gets.chomp.to_i

	
	if opcion == 1
		data.each do |producto|
			arreglo = producto.split(", ")
			print arreglo[1]
		end
	end

	if opcion == 2
		puts "ingrese nombre producto"
		opcion2 = gets.chomp.to_s
		data.each do |producto|
			arreglo = producto.split(", ")
			if arreglo[0] == opcion2
				print arreglo[1]
			end
		end
	end
	if opcion == 3
		data.each do |producto|
			arreglo = producto.split(", ")
			 if arreglo[1].to_i > 4
			 	print arreglo[0]+" "+arreglo[1]
			 end
		end
	end

	if opcion > 4
		puts "numero errado"
	end
	
end
	
