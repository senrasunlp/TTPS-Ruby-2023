=begin
Escribí una función llamada contar que reciba como parámetro dos String y que retorne
la cantidad de veces que aparece el segundo String en el primero, en una búsqueda case‑
insensitive (sin distinguir mayúsculas o minúsculas). 

Por ejemplo:
=end

def contar (cadena1, cadena2)
    puts cadena1.downcase.scan(cadena2).length
end

#Scan en ruby devuelve un array con los matches encontrados, con length obtenemos la cantidad de matches total que hay

contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la") # => 5

