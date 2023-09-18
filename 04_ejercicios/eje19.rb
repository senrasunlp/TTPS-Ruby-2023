=begin
Implementá las funciones necesarias para que, dado un color expresado en notación RGB, se
pueda obtener su representación en las notaciones entera y hexadecimal. La notación entera
se define como red + green * 256 + blue * 256 * 256 y la hexadecimal como el resultado de 
expresar en base 16 el valor de cada color y concatenarlos en orden. Por ejemplo:
=end

def notacion_entera(rgb) 
    r,g,b=rgb 
    puts r + g * 256 + b * 256 * 256 
end 
    
def notacion_entera2(rgb) 
    puts rgb.map.with_index { |valor, i| valor * 256.pow(i) }.inject(0, :+)

end

def notacion_hexadecimal(rgb) 
    string = "#"
    rgb.each_with_object(string) do |valor,string| 
        string << format('%02X',valor)         
    end 
    puts string
end

#<< es un metodo de string que concatena el valor que le pasemos

def notacion_hexadecimal2(rgb) 
    r,g,b=rgb 
    puts format('#%02X%02X%02X',r,g,b) 
end



notacion_entera([0, 128, 255])
notacion_entera2([0, 128, 255])

# => 16744448

notacion_hexadecimal([0, 128, 255])
notacion_hexadecimal2([0, 128, 255])

# => '#0080FF'