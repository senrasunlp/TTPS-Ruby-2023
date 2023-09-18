=begin
9. Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá las
siguientes operaciones sobre dicha cadena, implementando métodos que funcionen de la siguiente forma:
• string_reverso: retorna el string con los caracteres en orden inverso.
• string_sin_espacio: elimina los espacios en blanco que contenga.
• string_a_arreglo_ascii: retorna un arreglo con cada uno de los caracteres convertidos a su correspondiente valor ASCII.
• string_remplaza_vocal: cambia las vocales por números:
– "a" o "A" por "4",
– "e" o "E" por "3",
– "i" o "I" por "1",
– "o" u "O" por "0",
– y "u" o "U" por "6".
=end

#Agregar metodos a la clase String

class String
    def string_reverso
        self.reverse
    end

    def string_sin_espacio
        self.delete(' ')
    end

    def string_a_arreglo_ascii
        self.chars.map(&:ord)
    end

    def string_remplaza_vocal
        self.gsub(/[aeiouAEIOU]/, 'a' => '4','A' => '4', 'e' => '3','E' => '3', 'i' => '1','I' => '1', 'o' => '0','O' => '0', 'u' => '6', 'U' => '6')
    end
    # Hay alguna otra forma de hacerlo?
end


puts "hola mundo".string_reverso

puts "hola mundo".string_sin_espacio

puts "hola mundo".string_a_arreglo_ascii

puts "hola mundo bObo".string_remplaza_vocal


