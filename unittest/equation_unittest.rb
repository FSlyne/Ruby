require 'test/unit'
require './equation'

class TestMult < Test::Unit::TestCase
    def test_mult
    	expected = mult 3,2
    	assert_equal expected, 6
    end
   
    def test_mult4
        expected = mult4 3
        assert_equal expected, 12
    end

    def test_mult_fail
        expected = mult 4, 2
        assert_not_equal expected, 7
    end

    def test_mult4_fail
        expected = mult4 5
        assert_not_equal expected, 18
    end
 
    def test_add1
    	expected = add1 3
    	assert_equal expected, 4
    end
    
    def test_minus
        expected =  minus 5, 3
        assert_equal expected, 2
    end
    def test_div3_1
        expected = div3 9
        assert_equal expected, 3
    end

    def test_div_1
        expected = div 10,2
        assert_equal expected, 5
    end
#functions which returns negative test result

    def test_div_2
        expected = div 10,2
        assert_not_equal expected, 4
    end

    def test_div3_2
        expected = div3 9
        assert_not_equal expected, 4
    end
    
end

class TestMult4 < Test::Unit::TestCase
    def test_mult4
        expected = mult4 3
        assert_equal expected, 12
    end
    
end



