num_array = [1,2,3,4,5,6,7,8,9,10]

num_array.each do |num|
  puts num
end

contactos = { "Jose" => 1234, "Pedro" => 5678, "Dani" => 9012 }

contactos.each do |llave, valor|
  puts "#{llave} : #{valor}"
end

contactos.each_key do |llave|
  puts "Llave: #{llave}"
end

contactos.each_value do |valor|
  puts "Valor : #{valor}"
end

"Alonso".each_char do |chr|
  puts chr
end