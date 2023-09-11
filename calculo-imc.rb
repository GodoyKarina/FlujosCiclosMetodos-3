puts "***¡Bienvenido/a al sistema de cálculo de índice de masa corporal!***"

# Definir un método para calcular el IMC
def calcular_imc(peso, altura)
  return peso / (altura ** 2)
end

# Definir un método para determinar el nivel de obesidad
def determinar_obesidad(imc)
  if imc < 18.5
    return "Bajo peso"
  elsif imc >= 18.5 && imc < 24.9
    return "Peso normal"
  elsif imc >= 25 && imc < 29.9
    return "Sobrepeso"
  elsif imc >= 30 && imc < 34.9
    return "Obesidad grado I (Moderado)"
  elsif imc >= 35 && imc < 39.9
    return "Obesidad grado II (Severo)"
  else
    return "Obesidad grado III (Muy severo)"
  end
end

# Solicitar al usuario que ingrese el peso y la altura
print "Ingrese su peso en kilogramos: "
peso = gets.chomp.to_f

print "Ingrese su altura expresada en metros (ejemplo: 1.70): "
altura = gets.chomp.to_f

# Calcular el IMC llamando al método
imc = calcular_imc(peso, altura)

# Determinar el IMC llamando al método
nivel_obesidad = determinar_obesidad(imc)

# Mostrar el resultado al usuario
puts "Su Indice de Masa Corporal es: #{imc}"
puts "El índice calculado corresponde a: #{nivel_obesidad}"