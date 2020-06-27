# until se ejecuta mientras la condición sea false

resp = ""

until resp == "n"
  puts "Estoy jugando..."

  print "Continuar? s/n "
  resp = gets.chomp
end
