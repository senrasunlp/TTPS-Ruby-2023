class Longitud
    def longitud(*args)
        args.each do |arg|
            puts "#{arg.to_s.length}"
        end
    end
end

Longitud.new.longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
# Debe imprimir:
# "9" --> 1
# "2023-09-14 13:22:10 +0000" --> 25
# "Hola" --> 4
# {:un=>"hash"} --> 13
# ruby --> 4