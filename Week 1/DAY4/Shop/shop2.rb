
class Shop
	attr_reader :list, :seasons
	#quedan disponibles para fuerea de la clase
	#attr_reader :prices (sólo para las variables de instancias; 
	#métodos de array y hashes #documentación. #hace accesibles los valores #writer deja modificar el valor de esa variable desde
	#cualquier sitio #la hace accesible con el reader #almacena el valor en el attr_reader como si fuera un método
	def initialize
		@inventory = {
						:apples => {:Spring=>10,:Summer=>10,:Autumn=>15,:Winter=>12},
	 					:oranges => {:Spring=>5,:Summer=>2,:Autumn=>5,:Winter=>5},
					    :grapes => {:Spring=>15,:Summer=>15,:Autumn=>15,:Winter=>15},
	 					:banana => {:Spring=>20,:Summer=>20,:Autumn=>20,:Winter=>21}
	
					 }
		#Shop.new.prices !!!! Ásí de izq a drch es como llamas al método prices, creando el objeto
		#un array puede almacenar los distintos valores de una variable
		#el hash sobreescribe
		@list=[]
		@prices=[]
		@seasons=[]
	end
end

	











