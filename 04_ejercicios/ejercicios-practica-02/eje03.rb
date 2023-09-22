class Ordenar
    def ordenar_arreglo(*array)
      array.sort
    end
end

#Uso el splat operator para juntar todos los elementos como un array

entrada = [10, 9, 1, 2, 3, 5, 7, 8]
print Ordenar.new.ordenar_arreglo(*entrada)

#Uso nuevamente el método splat sobre el array de entrada para que cada elemento sea un argumento