require 'takeaway'

describe 'Takeaway' do
	
	let(:takeaway) { Takeaway.new }

	it 'has a menu' do
		expect(takeaway.menu)
	end

	it 'has various dishes and prices in the menu' do
		expect(takeaway.menu["Salmon Sashimi"]).to eq(10)
	end

end