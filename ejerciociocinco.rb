file = File.open("productosejercicio5.txt", "r")
data = file.readlines
file.close
opcion = 0
contador = 0

while opcion != 5
	print "ingrese opcion "
	opcion = gets.chomp.to_i

	if opcion == 1
		
		data.each do |valor|
			arreglo = valor.split(", ")
			nombre = arreglo [0]
			contador =  arreglo[1].to_i + arreglo[2].to_i + arreglo[3].to_i
			puts "el total del producto #{nombre} es de #{contador}"
		end
	end
	
	if opcion == 2
		print "ingrese el nombre del producto que desea saber el stock "
		opcion2 = gets.chomp.to_s
		data.each do |valor|
			arreglo = valor.split(", ")
				if arreglo[0].to_s == opcion2				
				contador =  arreglo[1].to_i + arreglo[2].to_i + arreglo[3].to_i	
				end
			
		end
		puts "el total del producto #{opcion2} es de #{contador}"
	end


	if opcion == 3
		data.each do |linea|
				arr = linea.split(", ")
				arr2 = []
				bodega = 0
				arr.each do |x|
					if x.chomp == "NR"
						arr2.push(bodega)
					end
					bodega += 1
				end

				if arr2.length > 0
					arr2.each do |b|
						puts "Producto #{arr[0]}, debe registrar en bodega#{b}"
					end
				end
			end
			puts ""
		
	end

	if opcion == 4
		puts "Ingrese nuevo Producto y Stock para cada bodega"
			nuevo = gets.chomp
			archivo = File.open(archivo,"a")
			arch.puts (nuevo)
			arch.close
			puts "Producto Ingresado"
			puts ""
		
	end

	if opcion > 5
		puts "opcion no valida"
	end

end


