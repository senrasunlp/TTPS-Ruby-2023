=begin
Mejorar la función anterior en una nueva llamada listar_mejorada para que además reciba
opcionalmente un parámetro llamado pegamento (su valor por defecto debe ser ": ") 
que sea el que utilice para unir los pares de clave/valor. Por ejemplo:
=end
# => "1. perros -> 2\n2. gatos -> 2\n3. peces -> 0\n4. aves -> 0"

def listar_mejorada(hash, pegamento = ": ")
    hash.each_with_index.map { |(key, value), index| "#{index + 1}. #{key}#{pegamento}#{value}" }.join("\n")
end


puts listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> ")
puts listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 })
