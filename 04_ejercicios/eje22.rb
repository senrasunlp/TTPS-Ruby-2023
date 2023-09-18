=begin
Creá otra función, similar a la anterior, que busque los números naturales múltiplos de N números enteros que recibirá como parámetro en un arreglo. Por ejemplo:
=end


def multiplos_de(arr, tope)
    suma = 0
    (1..tope).each do |i|
        if arr.all? { |num| i % num == 0 }
            suma += i
        end
    end
    puts suma
end

multiplos_de([3, 5], 100)
# => 315
multiplos_de([3, 5, 17, 28, 65], 100_000)
# => 92820

def multiplos_dev2(arr, tope)
    puts (1..tope).select { |i| arr.all? { |num| i % num == 0 } }.sum
end

multiplos_dev2([3, 5], 100)
# => 315
multiplos_dev2([3, 5, 17, 28, 65], 100_000)
# => 92820
