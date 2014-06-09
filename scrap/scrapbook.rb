

class Scrap 

	
	ChunkyBacon = "chunky bacon"
	# @@class_variable = "class var"
	# $x = "x"

	def initialize 
		
	end

	def repeat_a_lot
		5.times { print "Odelay! \n" }
		print "instance var #{@test_instance_variable} \n"

		print print "#{ChunkyBacon} \n"
	end

	class << self 
		def static_like 
			print "calling static like \n"
		end
	end

	# def test_symb 
	# 	:test_symbol = "symb"

	# 	print :test_symbol
	# end
	#Dont know what symbol is *****
end

def Scrap.another_static_like 
	print "calling another static like \n"
end

scrap_var = Scrap.new
print scrap_var.repeat_a_lot
print Scrap.static_like
print Scrap.another_static_like

