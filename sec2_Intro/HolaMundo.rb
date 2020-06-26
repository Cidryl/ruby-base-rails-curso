# ejecutar archivo:
# cmd \> ruby HolaMundo.rb
# abrir la consola interactiva
# cmd \> irb
# salir: exit

# puts = mostrar mensajes en consola y luego salto de línea
puts "Hola Mundo desde texto"

variable = "Alonso"

# print = mostrar mensajes en consola sin salto de llínea
print "Hola "
print variable
puts ""

# interpolación de cadena: con #{}
puts "Hola #{variable} (con interpolación)"

# para string se puede usar tanto " " como ' ' en cuanto a variables
# cuando usamos '' en RUBY, le indicamos que es texto plano

puts 'Hola #{variable} (con interpolación)'

# gets = pedir datos al usuario pero después ingresa el caracter de fin de entrada 
# por lo que salta a una nueva línea
# chomp es una función del gets que quita dicho caracter
print "Introduce tu nombre: "
nombre = gets.chomp
# o bien hacer:
# nombre = nombre.chomp
saludo = "buenas tardes"
puts "Hola #{nombre}, que tengas #{saludo}"

