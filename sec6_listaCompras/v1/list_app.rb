require "./item.rb"
require "./list.rb"

# Agregar un artículo
# Remover un artículo
# Ver todos los artículos
# Marcar un determinado artículo
# Borrar todos los artículos
# Salir de la aplicación

class ListApp
  attr_writer :list

  def initialize
    @list = List.new  
  end

  def run
    separador = '*'
    veces = 50

    puts "Bienvenido a nuestra lista de Compras"
    
    loop do
      puts " "
      puts "a - Agregar un artículo"
      puts "r - Remover un artículo"
      puts "v - Ver todos los artículos"
      puts "m - Marcar un determinado artículo"
      puts "b - Borrar todos los artículos"
      puts "s - Salir de la aplicación"
      input = gets.chomp

      case input
      when 'a'
        print "Digite el nombre del artículo: "
        item = gets.chomp
        @list.add_item(item)
        
        veces.times { print separador } 
        puts "\n#{item} ha sido agregado a tu lista"

      when 'r'
        print "Qué número de artículo que deseas remover? "
        index = gets.chomp
        item = @list.remove_item(index.to_i)

        veces.times { print separador } 
        puts "\n#{item.text} ha sido eliminado de tu lista"

      when 'v'
        @list.show_all
        veces.times { print separador } 
        puts "\nFin de la lista"

      when 'm'
        puts "Marcar"
        print "Qué número de artículo que deseas marcar? "
        index = gets.chomp
        item = @list.check_item(index.to_i)

        veces.times { print separador } 
        puts "\n#{item} ha sido marcado de tu lista"

      when 'b'
        print "Deseas remover todos los artículos? s/n "
        re = gets.chomp

        veces.times { print separador } 
        if re == 's'
          @list.remove_all
          puts "Se eliminaron todos los artículos"
        else
          puts "Operación cancelada"
        end

      when 's'
        break

      else
        puts "Comando no reconocido"
      end
    end

    puts "Gracias por utilizar nuestra aplicación"
  end
end

listaAPP = ListApp.new
listaAPP.run