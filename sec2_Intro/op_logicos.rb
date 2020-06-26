# Operadores lógicos:
# And -> &&
# Or  -> || (pipes en Inglés, pleca o barra vertical en español, alias "palito")

def evaluar(calificacion)
  if calificacion == 0 || calificacion == 1
    print "No estudiante nada"
  elsif calificacion > 1 && calificacion < 7
    print "Reprobaste"
  elsif calificacion == 7 || calificacion == 8
    print "Pasaste de pansazo" #(lección de 23. Operadores Lógicos)
  elsif calificacion == 9
    print "Te fue muy bien"
  elsif calificacion == 10
    print "Feliciadades sacaste 10!!!"
  else
    print "Esa calificación no es valida"
  end  
end

print "Dime tu calificación: "

#convertir el string a un entero
calificacion = gets.to_i

evaluar(calificacion)