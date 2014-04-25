class Person

	def initialize(my_order = {})
		my_order = @my_order
	end

	def view_menu
		@menu = { "Salmon Sashimi" => 10, 
			"Tuna Sashimi" => 7,
			"Yellow Tail Sashimi" => 6,
			"Mackerel Sashimi" => 8 }	
	end

	def order(dish, quantity)
		@my_order = {}
		@my_order[dish] = quantity
		@my_order
	end

	def view_order
		@my_order
	end

end