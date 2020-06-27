# 2 formas de crear arreglos:

# 1. []
# con elementos
arrvj = ["Zelda", "Mario kart", "Super Smash bros"]

# vacío
arrvac = []

# 2. con la clase
arrnew = Array.new

# con tamaño del arreglo
arrnew = Array.new(3)

# con tamaño y que agregar para repetir 'x' veces
arrnew = Array.new(3, "Mario")

# Obtener por posición
# los arreglos empiezan con 0
puts arrvj[0]

# obtener el primero y el ultimo
arrvj.first
arrvj.last

puts arrvj.fetch(6, "No hay un juego aquí")

# Agregar elementos:
# 1. <<
arrvj << "Mario Party"

# 2. push
arrvj.push("CTR")

# 3. Incluir al inicio: unshift
arrvj.unshift("Peach Ball")

# 4. Sumar otro arreglo
arrvj += ["HALO", "Castlevania"]

puts "El arreglo completo"
puts arrvj
puts " "

## Eliminar de un arreglo
# shift; quita el primero y lo retorna
fgame = arrvj.shift

# pop: quita el ultimo y lo retorna
lgame = arrvj.pop

# drop quitar objetos sin afectar el arreglo original
copia = arrvj.drop(2)
puts copia
puts " "
puts arrvj
puts " "

# slice
sl = arrvj.slice(1,3)
puts sl
puts " "
puts arrvj
