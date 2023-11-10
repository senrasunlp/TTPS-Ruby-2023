require 'minitest/autorun'
require_relative './eje05'


class CuantoFaltaTest < Minitest::Test

    def test_Bigger_than1h
        assert_equal cuanto_falta? > 60
    end
end
