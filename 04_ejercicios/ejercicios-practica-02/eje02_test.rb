require 'minitest/autorun'
require_relative './eje01'

class OrdenarTest < Minitest::Test
  def setup
    @ordenar = Ordenar.new
  end

  def test_empty_array
      input_array = []
      expected_result = []
      assert_equal expected_result, @ordenar.ordenar_arreglo([])
  end
  
  def test_ordenar_arreglo_sorts_an_array
    input_array = [3, 1, 2]
    expected_result = [1, 2, 3]
    
    assert_equal expected_result, @ordenar.ordenar_arreglo([3, 1, 2])
  end
end