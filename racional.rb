# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	
	
	def initialize (a,b)
		@a=a
		@b=b
	end	
	
	def to_s
		"#{@a}/#{@b}"
	end
	
	def suma(numerador,denominador)
		mcm= ((@b * denominador)/ gcd(@b, denominador))	#mcm(a,b)= (a*b)/ mcd(a,b)
		numeradorAux= mcm/@b * @a 
		numerador= mcm/denominador * numerador
		sumaA= numeradorAux + numerador
		sumaB=mcm
		puts 'Suma:'
		puts "#{sumaA}/#{sumaB}"
		puts 'Suma simplificada:'
		mcd= gcd(sumaA, sumaB)
		sumaA= sumaA/mcd
		sumaB= sumaB/mcd
		puts "#{sumaA}/#{sumaB}"
		"#{sumaA}/#{sumaB}"
	end
	
	def resta(numerador, denominador)
		mcm= ((@b * denominador)/ gcd(@b, denominador))	#mcm(a,b)= (a*b)/ mcd(a,b)
		numeradorAux= mcm/@b * @a 
		numerador= mcm/denominador * numerador
		restaA= numeradorAux - numerador
		restaB=mcm
		
		puts 'Resta:'
		puts "#{restaA}/#{restaB}"
		puts 'Resta simplificada:'
		mcd= gcd(restaA, restaB)
		restaA= restaA/mcd
		restaB= restaB/mcd
		puts "#{restaA}/#{restaB}"
		"#{restaA}/#{restaB}"
	end
	
	def producto(numerador, denominador)
		productoA= @a * numerador
		productoB= @b * denominador
		puts 'Producto:'
		puts "#{productoA}/#{productoB}"
		puts 'Producto simplificada:'
		mcd= gcd(productoA, productoB)
		productoA= productoA/mcd
		productoB= productoB/mcd
		puts "#{productoA}/#{productoB}"
		"#{productoA}/#{productoB}"
	end
	
	def division (numerador, denominador)
		numeradorAux= @a * denominador
		denominadorAux= @b * numerador
		puts 'División:'
		puts "#{numeradorAux}/#{denominadorAux}"
		puts 'Producto simplificada:'
		mcd= gcd(numeradorAux, denominadorAux)
		numeradorAux= numeradorAux/mcd
		denominadorAux= denominadorAux/mcd
		puts "#{numeradorAux}/#{denominadorAux}"
		"#{numeradorAux}/#{denominadorAux}"
	end
end
