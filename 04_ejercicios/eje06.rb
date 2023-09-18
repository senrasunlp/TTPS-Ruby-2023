=begin
Escribí una función que exprese en palabras la hora que recibe como parámetro, según las si‑
guientes reglas:
• Si el minuto está entre 0 y 10, debe decir “en punto”,
• si el minuto está entre 11 y 20, debe decir “y cuarto”,
• si el minuto está entre 21 y 34, debe decir “y media”,
• si el minuto está entre 35 y 44, debe decir “menos veinticinco” con la hora siguiente,
• si el minuto está entre 45 y 55, debe decir “menos cuarto” con la hora siguiente,
• y si el minuto está entre 56 y 59, debe decir “Casi son las” con la hora siguiente
Tomá como ejemplos los siguientes casos:
=end

=begin
Es importante considerar que cuando la hora es 1, la forma correcta de expresarla no es
“Son las 1 en punto”, sino “Es la 1 en punto”. Esto debe tenerse en cuenta en cada uno de
los casos expresados en el enunciado de este ejercicio.
Tip: resolver utilizando rangos numéricos
=end

def tiempo_en_palabras(tiempo)
    hora = tiempo.hour
    minuto = tiempo.min
    hora == 1 ? decir_hora = "Es la" : decir_hora = "Son las"

    case minuto
    when 0..10
        puts "#{decir_hora} #{hora} en punto"
    when 11..20
        puts "#{decir_hora} #{hora} y cuarto"
    when 21..34
        puts "#{decir_hora} #{hora} y media"
    when 35..44
        puts "#{decir_hora} #{hora + 1} menos veinticinco"
    when 45..55
        puts "#{decir_hora} #{hora + 1} menos cuarto"
    when 56..59
        puts hora == 0 ? "Casi es la 1" : "Casi son las #{hora + 1}"

    end
end

tiempo_en_palabras(Time.new(2023, 10, 21, 1, 15))
# => "Es la 1 y cuarto"
tiempo_en_palabras(Time.new(2023, 10, 21, 10, 1))
# => "Son las 10 en punto"
tiempo_en_palabras(Time.new(2023, 10, 21, 9, 33))
# => "Son las 9 y media"
tiempo_en_palabras(Time.new(2023, 10, 21, 8, 45))
# => "Son las 9 menos cuarto"
tiempo_en_palabras(Time.new(2023, 10, 21, 6, 58))
# => "Casi son las 7"
tiempo_en_palabras(Time.new(2023, 10, 21, 0, 58))
# => "Casi es las 1"