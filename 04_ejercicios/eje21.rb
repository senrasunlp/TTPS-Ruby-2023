# Escribí una función que encuentre la suma de todos los números naturales múltiplos de 3 y 5 (ambos) que sean menores que un número tope que reciba como parámetro. Por ejemplo:


def multiplos_de_3_y_5(tope)
    suma = 0
    (1..tope).each do |i|
        if i % 3 == 0 && i % 5 == 0
            suma += i
            puts suma
        end
    end
    puts suma
end

#multiplos_de_3_y_5(100) # => 315

def multiplos_de_3_y_5v2(tope)
    puts (1..tope).select { |i| i % 3 == 0 && i % 5 == 0 }.sum
end

#what does select do
#select returns a new array containing all elements of ary for which the given block returns a true value.
#select { |item| block } → new_ary
#select → Enumerator
#select {|obj| block } → new_ary
#select → Enumerator
#Returns a new array containing all elements of ary for which the given block returns a true value.
#If no block is given, an Enumerator is returned instead.

#what does sum at the end of an array do
#sum → number
#sum(init=0) → number
#Returns the sum of elements.
#The latter form is equivalent to:
#inject(init, :+)
#The default value is zero. The result is nil if the array is empty.


multiplos_de_3_y_5v2(100) # => 315
