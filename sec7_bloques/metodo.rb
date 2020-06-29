def hola
  # saltar al bloque de codigo que pasamos
  yield
  puts "Hola desde nuestra funcion"

  # sino pasamos bloques, se cae
  yield
  puts "Hola desde nuestra funcion"
end

hola do
  puts "Hola desde nuestro bloque"
end
