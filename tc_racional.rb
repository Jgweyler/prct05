# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	
	def setup 
		@ejemplo = Fraccion.new(5,4)
		@ejemplo2 = Fraccion.new(7,3)
	end
	
	def test_simple 
		assert_equal("5/4", Fraccion.new(5,4).to_s)
		assert_equal("7/3", Fraccion.new(7,3).to_s)
	end
	
	def test_failure_suma
		assert_equal("23/12", Fraccion.new(5,4).suma(2,3))
		assert_equal("61/21", Fraccion.new(7,3).suma(4,7))
	end
	
	def test_failure_resta
		assert_equal("7/12", Fraccion.new(5,4).resta(2,3))
		assert_equal("37/21", Fraccion.new(7,3).resta(4,7))
	end
	
	def test_failure_producto
		assert_equal("5/6", Fraccion.new(5,4).producto(2,3))
		assert_equal("4/3", Fraccion.new(7,3).producto(4,7))
	end
	
	def test_failure_division
		assert_equal("15/8", Fraccion.new(5,4).division(2,3))
		assert_equal("49/12", Fraccion.new(7,3).division(4,7))
	end
end
