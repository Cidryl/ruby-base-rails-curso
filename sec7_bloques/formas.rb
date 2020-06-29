# definir explicitamente
# el bloque se hace referencia con el &
# en vez de usar yield, se hace uso del
# block.call
def suma (num1, num2, &block)
  resultado = num1 + num2

  if block_given?
    yield resultado
  else
    puts "El resultado calculado en el metodo es #{resultado}"
  end
  
  #block.call resultado
end

puts "\n"

# parametros
suma(1, 1) do |resultado|
  puts "El resultado de nuestra operacion es #{resultado}"
end

puts "\n"

# revisar si envio el bloque de código antes de ejecutar
suma(2, 2)