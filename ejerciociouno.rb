def html(palabrauno, palabrados, array,color)
	file = File.open("index.html", "w")
	file.puts "<style>"
	file.puts "p{background-color:#{color}}"
	file.puts "</style>"
	file.puts "<p>#{palabrauno}</p>"
	file.puts "<p>#{palabrados}</p>"
	file.puts "<ol>"
	array.each do |valor|
		file.puts "<li>#{valor}</li>"
	end
	file.puts "</ol>"	
	file.close
	return nil
end


html("hola", "mundo",["uno","dos"] ,"red")

