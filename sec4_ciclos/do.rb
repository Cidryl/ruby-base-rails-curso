# Ciclo sin fin, por no agregar cuando terminar
# loop { puts "Esto es un ciclo" }

# puede ser {...} o do ... end
# Por convención, si tiene una línea puede usar {...}
# Si tiene más de una línea, usar el do ... end

loop do
  # lo que está adentro se llama bloque
  print "Continuar? s/n "
  resp = gets.chomp

  if resp != "s"
    break
  end
  
  puts "Esto es un ciclo do"
end