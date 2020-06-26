#print "Introduce tu nombre: "
#nombre = gets.chomp
#saludo = "buenas tardes"
#puts "Hola #{nombre}, que tengas #{saludo}"

# definición de un método
def method_name
  puts "method_name"
end

# llamar un método
# a RUBY no le interesa si tiene o no los parentesis siempre y cuando :
#   no tenga parámetros
#   tenga un parámetro

method_name

# argumentos = parámetros
# = nil, es que si no trae el parámetro, el valor es nulo
def saludar(nombre, saludo = nil)
  puts "Hola #{nombre}, que tengas #{saludo}"
end

# Si se llama sin argumentos dirá error
# saludar

# funcional:
# saludar "Jose"
# saludar("Jose")
# saludar("Jose", "buenas tardes")

# print "Introduce tu nombre: "
# nombre = gets.chomp
# saludo = "buenas tardes"
# saludar(nombre, saludo)

# métodos con return
# En RUBY tenemos valores de retorno implícitos y explícitos. 
# Sino especificamos que queremos regresar como valor de un 
# método se devolverá la última linea que tengamos dentro.
def suma(num1, num2)
  return num1 + num2
end

a = 3
b = 5
resultado = suma(a, b)

puts "La suma de #{a} y #{b} es #{resultado}"

# demás funciones

def resta(num1, num2)
  return num1 - num2
end

def multi(num1, num2)
  return num1 * num2
end

def div(num1, num2)
  return num1 * num2
end

def mod(num1, num2)
  return num1 % num2
end
