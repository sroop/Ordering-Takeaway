require 'takeaway'

describe 'Takeaway' do
	
	let(:takeaway) { Takeaway.new }
	let(:person) { double :person, view_order: {"Salmon Sashimi" => 1} }

	context 'The Menu:' do

		it 'exists when a takeaway is initialized' do
			expect(takeaway.menu)
		end

		it 'has various dishes and prices in the menu' do
			expect(takeaway.menu["Salmon Sashimi"]).to eq(10)
			expect(takeaway.menu["Yellow Tail Sashimi"]).to eq(6)
		end

	end

	context 'The Order:' do

		it 'is received' do
			takeaway.receive_order(person)
			expect(takeaway.receive_order(person)).to eq({"Salmon Sashimi" => 1})
		end

	# 	it 'can sum up the total quantity of an order' do
	# 	expect(takeaway.customer_order(["Salmon Sashimi", "Salmon Sashimi"])).to eq(2)
	# end

		# it 'calculates the total price of an ordered item' do
		# 	takeaway.price("Salmon", 2)
		# 	menu["Salmon"] * 2
		# 	# expect(takeaway.price).to eq(20)
		# end
	end

end