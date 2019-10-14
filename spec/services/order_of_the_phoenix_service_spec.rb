require 'rails_helper'

RSpec.describe "order of the phoenix service" do
    it "returns ootp members for a house", :vcr do
        service = OrderOfThePhoenixService.new("Gryffindor")
        peeps = service.character_data

		expect(peeps.last).to have_key(:name)
		expect(peeps.last).to have_key(:house)
		expect(peeps.last).to have_key(:orderOfThePhoenix)
		expect(peeps.last).to have_key(:patronus)
    end
end