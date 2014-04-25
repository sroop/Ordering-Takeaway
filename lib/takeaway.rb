class Takeaway

	attr_reader :menu

	def initialize
		@menu = { "Salmon Sashimi" => 10, 
			"Tuna Sashimi" => 7,
			"Yellow Tail Sashimi" => 6,
			"Mackerel Sashimi" => 8 }	
	end

	def receive_order(person)
		persons_order = person.view_order
		persons_order
	end

	# def price(item, quantity)
	# 	@price = menu[item] * quantity
	# 	# @price = (order.values).inject(0) { | accu, price | accu + price }
	# end

end

