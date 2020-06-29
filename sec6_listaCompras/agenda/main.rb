require "./contact.rb"
require "./contactRepository.rb"
require "rbconfig"

class Main
  attr_writer :list
  attr_reader :is_windows

  def initialize
    @list = ContactRepository.new
    @is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
  end

  def clear
    if @is_windows == 0
      system "cls"
    else
      system "clear"
    end
  end

  def continue
    print "\nPresione cualquier tecla para continuar..."
    input = gets.chomp
  end

  def menu_add
    contact = Contact.new

    loop do
      clear
      puts "Agregar nuevo contacto\n\n"
      print "Nombre: "
      contact.name = gets.chomp
      print "Teléfono: "
      contact.number = gets.chomp

      if @list.find_item(contact) == true
        puts "Ya existe el contacto"
        continue
      else
        @list.add_item(contact)
        puts "#{contact.name} ha sido agregado"
        continue
        break
      end
    end
  end

  def menu_update
    clear
    puts "Actualizar un contacto\n\n"
    puts @list.show_all
    print "\n\nDigite el indice del objeto por modificar: "
    index = gets.chomp.to_i
    contact = @list.get_item_at(index)

    puts "\n#{contact.to_s}\n"

    print "Nombre: "
    contact.name = gets.chomp
    print "Teléfono: "
    contact.number = gets.chomp
    @list.update_item(index, contact)

    puts "#{contact.name} ha sido actualizado"
    continue
  end

  def menu_show_all
    clear
    puts "Listar contactos\n\n"
    puts @list.show_all
    continue
  end

  def menu_delete
    clear
    puts "Eliminar un contacto\n\n"
    puts @list.show_all
    print "\n\nDigite el indice del objeto por eliminar: "
    index = gets.chomp.to_i

    contact = @list.remove_item_at(index)
    puts "#{contact.name} ha sido eliminado"
    continue
  end

  def menu_delete_all
    clear
    puts "Eliminar todos los contactos\n\n"
    print "\n\nEstá seguro que desea eliminar todos los registros: s/n "
    index = gets.chomp

    if index == 's'
      @list.remove_all
      puts "Todos los registros han sido eliminados"
    end

    continue
  end

  def run
    loop do
      clear
      puts "Bienvenido a la lista de contactos\n\n"
      puts "1 - Agregar un contacto"
      puts "2 - Actualizar un contacto"
      puts "3 - Listar contactos"
      puts "4 - Eliminar un contacto"
      puts "5 - Eliminar todos los contactos"
      puts "9 - Salir de la aplicación"
      input = gets.chomp
      clear

      case input.to_i
      when 1
        menu_add

      when 2
        menu_update

      when 3
        menu_show_all

      when 4
        menu_delete

      when 5
        menu_delete_all

      when 9
        break

      else
        puts "Comando no reconocido"
      end
    end

    puts "Gracias por utilizar nuestra aplicación"
  end
end

main = Main.new
main.run