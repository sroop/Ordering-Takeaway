require 'takeaway'

describe 'Takeaway' do
	
	let(:takeaway) { Takeaway.new }

	context 'The Menu:' do

		it 'exists when a takeaway is initialized' do
			expect(takeaway.menu)
		end

		it 'has various dishes and prices in the menu' do
			expect(takeaway.menu["Salmon Sashimi"]).to eq(10)
			expect(takeaway.menu["Yellow Tail Sashimi"]).to eq(6)
		end

	end

	context 'The Receipt:' do

		it ' an order' do
			expect(takeaway.receive_order).to eq({"Salmon Sashimi"=>10, "Tuna Sashimi"=>7, "Mackerel Sashimi"=>8})
		end

		it 'calculates the total price of an order' do
			expect(takeaway.receive_order).to eq({"Salmon Sashimi"=>10, "Tuna Sashimi"=>7, "Mackerel Sashimi"=>8})
			expect(takeaway.receipt).to eq(25)
		end
	
	end

	# context 'The Order:' do
		
	# 	it 'sends a text message when the order is placed' do
			
	# 	end

	# end

end