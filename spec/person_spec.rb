require 'person'

describe 'Person' do

	let(:person) { Person.new }
	
	it 'has access to the takeaway menu' do
	expect(person.menu).to eq({ "Salmon Sashimi" => 10, 
			"Tuna Sashimi" => 7,
			"Yellow Tail Sashimi" => 6,
			"Mackerel Sashimi" => 8 })
	end

	it 'can place an order from the menu by selecting item and quantity' do
		expect(person.order("Salmon Sashimi", 1)).to eq({"Salmon Sashimi" => 1})
	end

end