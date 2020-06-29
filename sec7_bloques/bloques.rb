# bloque de do ... end, usado para varias lineas
3.times do
  puts "Esto es parte de un bloque de codigo"
end

puts "\n"

# bloques de {...} normalmente usado cuando solo tiene una linea
3.times { puts "Esto es parte de un bloque de codigo en llave" }

puts "\n"

# parar parámetros o argumentos al bloque usando pipes o plecas
3.times do |tim|
  puts "Esto es parte de un bloque #{tim}"
end

puts "\n"

# de misma forma con las {...}
3.times { |tim| puts "Esto es parte de un bloque de codigo en llave #{tim}" }
