=begin
Escribí una función longitud que dado un arreglo que contenga varios String cualesquiera,
retorne un nuevo arreglo donde cada elemento es la longitud del String que se encuentra en
la misma posición del arreglo recibido como parámetro. Por ejemplo:
=end

def longitud(array)
    array.map(&:length)
end

puts longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2023']) # => [4, 6, 4, 12]

