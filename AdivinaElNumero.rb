# Genera un número aleatorio dentro de un rango especificado
def generar_numero_aleatorio(min, max)
  return rand(min..max)
end

# Define una función para jugar al juego
def jugar_adivina_el_numero(min, max)
  numero_a_adivinar = generar_numero_aleatorio(min, max)
  intentos = 0

  puts "Bienvenido a Adivina el Número!"
  puts "Estoy pensando en un número entre #{min} y #{max}."
  
  loop do
    print "Ingresa tu adivinanza: "
    adivinanza = gets.chomp.to_i
    intentos += 1

    if adivinanza == numero_a_adivinar
      puts "¡Felicitaciones! Adivinaste el número en #{intentos} intentos."
      break
    elsif adivinanza < numero_a_adivinar
      puts "El número es más grande. Intenta de nuevo."
    else
      puts "El número es más pequeño. Intenta de nuevo."
    end
  end
end

# Solicita al usuario que defina el rango
print "Ingresa el número mínimo del rango: "
min = gets.chomp.to_i

print "Ingresa el número máximo del rango: "
max = gets.chomp.to_i

# Llama a la función para iniciar el juego
jugar_adivina_el_numero(min, max)