=begin
Modificá la función anterior para que sólo considere como aparición del segundo String cuan‑
do se trate de palabras completas. Por ejemplo:
=end

def contar_palabras (cadena1, cadena2)
    puts cadena1.downcase.scan(/\s#{cadena2}\s/).length + cadena1.downcase.scan(/^#{cadena2}\s/).length
end

contar_palabras("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la") # => 4

#DUDA: Hay alguna forma de hacerlo más "elegante" que con dos scan?
