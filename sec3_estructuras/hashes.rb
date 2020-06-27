# key => valor
# los key son unicos
contactos = { "jose" => 1234, "pedro" => 4569 }

contactos[:jose]

contactos["pedro"] = 3333

otro = { :jose => 1234, :pedro => 4569 }

# Añadir elemento

contactos["dani"] = 8520
contactos[:paty] = 7530

puts contactos
# salida: { "jose" => 1234, "pedro" => 4569, "dani" => 8520, :paty => 7530 }

# agrega y retorna, no afecta el nuevo
contactos = contactos.merge({maria: 3333, francisco: 99999})
puts contactos
puts contactos.length

# retornar las llaves de un hash
contactos = {jose: 1234, pedro: 4569, kevin: 8520, dani: 7523}
puts contactos.keys

# tiene la llave?
puts contactos.has_key?(:jose)

# agregar al hash store(llave, valor)
contactos.store(:maria, 9090)
puts contactos

## otros métodos:

# valores
puts contactos.values

# tiene el valor?
puts contactos.has_value?(1234)

