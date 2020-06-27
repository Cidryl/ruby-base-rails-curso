# Los nombres normalmente se crean bajo notación de Camel case
# mayuscula por cada palabra
# https://en.wikipedia.org/wiki/Camel_case

class Perro
  # propiedad (get)
  #attr_reader :raza, :color, :edad

  # propiedad (set)
  #attr_writer :color, :edad

  # propiedad (set, get)
  attr_accessor :raza, :color, :edad

  # Constructor con parámetros
  def initialize(raza, color, edad)
    puts "Nació un perro especifico"
    @raza = raza
    @color = color
    @edad = edad
  end

  def ladrar
    puts "guau guau"
  end

  def orden (laOrden)
    puts "El perro hace la orden: #{laOrden}"
  end
  
  #sobreescribir el método toString
  def to_s
    "Soy de raza #{@raza} de color #{@color} y tengo #{@edad} años"
  end

  # Definición de un get
  #def color
  #  @color
  #end

  # Definición de un set
  #def color=(nuevo_color)
  #  @color = nuevo_color
  #end
end

#ruby Perro.rb
p = Perro.new("shibainu", "Café", "1 año")
p.color = "Café con blanco"
puts p.to_s
puts p.methods

#load "Perro.rb" # para cargar en irb y utilizarla
#escribir despues en consola
#irb \> a = Perro.new

