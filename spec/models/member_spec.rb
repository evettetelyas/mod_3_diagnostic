require 'rails_helper'

RSpec.describe Member, type: :model do
  describe "attributes" do
	it "should have values" do
		hash = {
			"_id": "5a0fa7dcae5bc100213c2338",
			"name": "Sirius Black",
			"house": "Gryffindor",
			"school": "Hogwarts School of Witchcraft and Wizardry",
			"alias": "Padfoot",
			"animagus": "black dog",
			"__v": 0,
			"ministryOfMagic": false,
			"orderOfThePhoenix": true,
			"dumbledoresArmy": false,
			"deathEater": false,
			"bloodStatus": "pure-blood",
			"species": "human"
		}
		member = Member.new(hash)
		
		expect(member.name).to eq(hash[:name])
		expect(member.role).to eq(hash[:role])
		expect(member.house).to eq(hash[:house])
		expect(member.patronus).to eq(hash[:patronus])
	end
  end
end