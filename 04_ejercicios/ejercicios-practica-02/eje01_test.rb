require 'minitest/autorun'
require_relative './eje01'

class OrdenarTest < Minitest::Test
  def setup
    @ordenar = Ordenar.new
  end

  def test_ordenar_arreglo_sorts_an_empty_array
      input_array = []
      expected_result = []
      assert_equal expected_result, @ordenar.ordenar_arreglo([])
  end
  
  def test_ordenar_arreglo_sorts_an_array
    input_array = [3, 1, 2]
    expected_result = [1, 2, 3]
    
    assert_equal expected_result, @ordenar.ordenar_arreglo([3, 1, 2])
  end

  def test_ordenar_arreglo_does_not_modify_original_array
    input_array = [3, 1, 2]
    
    sorted_array = @ordenar.ordenar_arreglo([3, 1, 2])
    
    refute_equal input_array, sorted_array
  end
end