def hola
  # saltar al bloque de codigo que pasamos
  # sino pasamos bloques, se cae
  puts "Hola desde nuestra funcion"
  resultado = 1 + 1

  yield resultado
end

puts "\n"

# parametros
hola do |resultado|
  puts "El resultado de nuestra operacion es #{resultado}"
end