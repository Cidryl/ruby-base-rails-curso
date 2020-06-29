class Contact
  attr_accessor :name, :number

  def initialize(name = "", number = nil)
    @name = name
    @number = number
  end

  def to_s
    "Nombre: #{@name} .tel: #{@number}"
  end
end