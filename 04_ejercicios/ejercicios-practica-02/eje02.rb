class Ordenar
    def ordenar_arreglo(*array)
      array.sort
    end
end

#Uso el splat operator para juntar todos los elementos como un array

print Ordenar.new.ordenar_arreglo(3, 2, 1, 4)
