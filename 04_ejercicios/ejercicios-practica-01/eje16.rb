=begin
Escribí una función más genérica, parecida a la del ejercicio anterior, que reciba como parámetro un String y un número n, 
y que realice una rotación de n lugares de las letras del String y retorne el resultado. 
Por ejemplo:
=end

def rot(text, n)
    alphabet = ("a".."z").to_a
    key = Hash[alphabet.zip(alphabet.rotate(n))]
    #what does zip do?
    
    text.each_char.inject("") { |encrypted, char| encrypted + key[char] }
end

puts rot("¡Bienvenidos a la cursada 2023 de TTPS Opción Ruby!", 13)
# => "¡Ovrairavqbf n yn phefnqn 2023 qr GGCF Bcpvóa Ehol!"