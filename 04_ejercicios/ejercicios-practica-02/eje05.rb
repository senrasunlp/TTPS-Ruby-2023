
def cuanto_falta?(time = Time.now)
    if time.hour == 23 && time.min == 59 && time.sec == 59
        puts "0"
    else
        puts "#{(24 - time.hour) * 60 - time.min - 1}"
    end
end


cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
# => Retorna la cantidad de minutos que faltan para las 23:59:59 del
31/12/2032
cuanto_falta?
# => Retorna la cantidad de minutos que faltan para la medianoche de
#hoy