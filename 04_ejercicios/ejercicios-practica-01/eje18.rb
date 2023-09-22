=begin
Escribí un nuevo script, que de manera similar al implementado en el punto anterior haga el saludo usando un nombre que se provea, pero que en lugar de solicitar que el nombre se ingrese
por entrada estándar, éste se reciba como argumento del script. Por ejemplo:

$ ruby script.rb C-3PO
¡Hola, C-3PO!

Tip: investigá cómo se puede trabajar con los argumentos que recibió el script Ruby en su
ejecución.
=end

puts "¡Hola, #{ARGV[0]}!"

# ARGV is an array that contains the arguments passed to the script