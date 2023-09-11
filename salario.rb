main# Definir un método
def calcular_nuevo_salario(salario_actual, incremento)
  # Calcular el nuevo salario
  nuevo_salario = salario_actual + (salario_actual * (incremento / 1000))
  # Devolver el nuevo salario
  return nuevo_salario
end

# Solicitar al usuario que ingrese el salario actual y el porcentaje de aumento
print "Ingrese el salario actual del colaborador: "
salario_actual = gets.chomp.to_f

print "Ingrese el porcentaje de aumento (por ejemplo, 10 para un 10%): "
incremento = gets.chomp.to_f

# Llamar al método para calcular el nuevo salario
nuevo_salario = calcular_nuevo_salario(salario_actual, incremento)

# Mostrar el nuevo salario al usuario
puts "El nuevo salario del colaborador es: #{nuevo_salario}"