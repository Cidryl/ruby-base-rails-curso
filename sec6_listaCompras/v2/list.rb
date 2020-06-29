require "./item.rb"

class List
  attr_writer :items

  def initialize
    @items = Array.new
  end

  def add_item(text)
    item = Item.new(text)
    @items.push(item)
  end

  def remove_item(index)
    @items.delete_at(index)
  end

  def check_item(index)
    @items[index].checked = true

    @items[index]
  end

  def remove_all
    @items.clear
  end

  def show_all
    salida = []

    if @items.length == 0
      salida.push "No hay artículos en tu lista de compras"
    else
      @items.each_index do |index|
        salida.push "#{index.to_s} - #{@items[index].to_s}\n"
      end
    end

    salida
  end
end