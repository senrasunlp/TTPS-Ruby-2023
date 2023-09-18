=begin
20. Investigá qué métodos provee Ruby para:

• Obtener la lista de ancestros (superclases) de una clase.

• Conocer la lista de métodos de una clase.

• Conocer la lista de métodos de instancia de una clase.

• Conocer las variables de instancia de una clase.

• Obtener el valor de una variable de instancia de un objeto 
(sin utilizar un método generado con attr_reader o similar) accediéndolo desde fuera de éste.

• Establecer el valor de una variable de instancia de un objeto 
(sin utilizar un método generado con attr_writer o similar) desde fuera de éste.
=end

    
class Persona
    attr_accessor :nombre, :apellido, :dni
    def initialize(nombre, apellido, dni)
        @nombre = nombre
        @apellido = apellido
        @dni = dni
    end

    def me_presento
        puts "Hola, mi nombre es #{@nombre} #{@apellido} y mi dni es #{@dni}"
    end
end


juan = Persona.new("Juan", "Perez", 12345678)
martin = Persona.new("Martin", "Gonzalez", 87654321)

#Obtener la lista de ancestros (superclases) de una clase.
#puts Persona.ancestors

#Conocer la lista de métodos de una clase.
#puts Persona.methods

#Conocer la lista de métodos de instancia de una clase.
#puts Persona.instance_methods

#Conocer las variables de instancia de una clase.
#puts juan.instance_variables

# Obtener el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_reader o similar) accediéndolo desde fuera de éste.
puts juan.instance_variable_get(:@nombre)

#Obtener el valor de una variable de instancia de un objeto con accesors
#puts juan.nombre


#Establecer el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_writer o similar) desde fuera de éste.
juan.instance_variable_set(:@nombre, "Juan Martín")

#Establecer el valor de una variable de instancia de un objeto con accesors
#juan.nombre = "Juan Carlos"

puts juan.nombre



