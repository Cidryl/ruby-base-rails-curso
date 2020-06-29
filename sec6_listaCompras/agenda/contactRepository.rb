require "./contact.rb"

class ContactRepository
  attr_writer :repository
  
  def initialize
    @repository = Array.new
  end

  def find_item(contact)
    exist = false

    @repository.each do |item|
      if item.name == contact.name
        exist = true
      end
    end

    exist
  end

  def add_item(contact)
    @repository.push(contact)
  end

  def update_item(index, contact)
    @repository[index].name = contact.name
    @repository[index].number = contact.number
  end

  def remove_item_at(index)
    @repository.delete_at(index)
  end

  def remove_all
    @repository.clear
  end

  def get_item_at(index)
    @repository[index]
  end

  def get_all
    @repository
  end

  def show_all
    item = Array.new

    if @repository != nil
      @repository.each_index do |index|
        item.push("[#{index}] #{@repository[index].to_s}")
      end
    else
      item.push("Lista de contactos vacía")
    end

    item
  end
end
