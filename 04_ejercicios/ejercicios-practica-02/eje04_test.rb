longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
# Debe imprimir:
# "9" --> 1
# "2023-09-14 13:22:10 +0000" --> 25
# "Hola" --> 4
# {:un=>"hash"} --> 13
# ruby --> 4

require 'minitest/autorun'
require_relative './eje04'

class LongitudTest < Minitest::Test
    def setup
        @longitud = Longitud.new
    end

    def test_longitud_empty
        input_array = []
        expected_result = 0
        assert_equal expected_result, @ordenar.ordenar_arreglo(*input_array)
    end

    def test_longitud_special_case
        input_array = [:ruby]
        expected_result = 4
        assert_equal expected_result, @ordenar.ordenar_arreglo(*input_array)
    end

    def test_longitud_hash
        input_array = [{:un=>'hash'}]
        expected_result = 13
        assert_equal expected_result, @ordenar.ordenar_arreglo(*input_array)
    end
end