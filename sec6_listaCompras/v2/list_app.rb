require "./item.rb"
require "./list.rb"
require "rbconfig"

# Agregar un artículo
# Remover un artículo
# Ver todos los artículos
# Marcar un determinado artículo
# Borrar todos los artículos
# Salir de la aplicación

class ListApp
  attr_writer :list, :separador, :veces
  attr_reader :is_windows

  def initialize
    @list = List.new
    @separador = '*'
    @veces = 50

    @is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
  end

  def run
    separador = '*'
    veces = 50

    loop do
      clear
      puts "Bienvenido a nuestra lista de Compras"
      puts " "
      puts "a - Agregar un artículo"
      puts "r - Remover un artículo"
      puts "v - Ver todos los artículos"
      puts "m - Marcar un determinado artículo"
      puts "b - Borrar todos los artículos"
      puts "s - Salir de la aplicación"
      input = gets.chomp
      clear

      case input
      when 'a'
        menu_add

      when 'r'
        menu_delete

      when 'v'
        menu_view_all

      when 'm'
        menu_check

      when 'b'
        menu_delete_all

      when 's'
        break

      else
        puts "Comando no reconocido"
      end
    end

    puts "Gracias por utilizar nuestra aplicación"
  end

  
  def clear
    if @is_windows == 0
      system "cls"
    else
      system "clear"
    end
  end


  def line_end(text)
    @veces.times { print @separador } 
    puts "\n#{text}"
    print "\nPresione cualquier tecla para continuar..."
    tecla = gets.chomp
    @veces.times { print @separador } 
  end


  def menu_add
    puts "a - Agregar un artículo\n"
    print "Digite el nombre del artículo: "
    item = gets.chomp
    @list.add_item(item)
    
    line_end("#{item} ha sido agregado a tu lista")
  end


  def menu_delete
    puts "r - Remover un artículo\n"
    puts @list.show_all
    print "\nQué número de artículo que deseas remover? "
    index = gets.chomp
    item = @list.remove_item(index.to_i)

    line_end("#{item.text} ha sido eliminado de tu lista")
  end


  def menu_view_all
    puts "v - Ver todos los artículos\n"
    puts @list.show_all

    line_end("Fin de la lista")
  end


  def menu_check
    puts "m - Marcar un determinado artículo\n"
    puts @list.show_all
    print "\nQué número de artículo que deseas marcar? "
    index = gets.chomp
    item = @list.check_item(index.to_i)

    line_end("#{item} ha sido marcado de tu lista")
  end


  def menu_delete_all
    puts "b - Borrar todos los artículos\n"
    print "Deseas remover todos los artículos? s/n "
    re = gets.chomp
    text = ""

    if re == 's'
      @list.remove_all
      text = "Se eliminaron todos los artículos"
    else
      text = "Operación cancelada"
    end

    line_end(text)
  end


end

listaAPP = ListApp.new
listaAPP.run