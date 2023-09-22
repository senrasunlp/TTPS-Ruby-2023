=begin
Escribí una función llamada reemplazar que, dado un String que recibe como parámetro,
busque y reemplace en éste cualquier ocurrencia de "{" por "do\n" y cualquier ocurrencia de
"}" por "\nend", de modo que convierta los bloques escritos con llaves por bloques multilínea
con do y end. Por ejemplo:
=end


def reemplazar(cadena)
    cadena.gsub!('{', "do\n").gsub!('}', "\nend")
    puts cadena
end

reemplazar("3.times { |i| puts i }") # => "3.times do\n |i| puts i \nend"<