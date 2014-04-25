class Takeaway

	def initialize
		menu
	end

	def menu
		@menu = { "Salmon Sashimi" => 10, 
			"Tuna Sashimi" => 7,
			"Yellow Tail Sashimi" => 6,
			"Mackerel Sashimi" => 8 }	
	end

	def receive_order
		@order = { "Salmon Sashimi" => 10, 
			"Tuna Sashimi" => 7,
			"Mackerel Sashimi" => 8 }
	end

	def receipt
		total_price = (receive_order.values).inject(0) { | accu, price | accu + price }
	end


end