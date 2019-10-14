class SearchFacade

	def initialize(house)
		@house = house
	end

	def service
		OrderOfThePhoenixService.new
	end
	
	def house_characters
		service.character_data.select { |member| member[:house] == @house }
	end

	def members
		house_characters.map do |char|
			Member.new(char)
		end
	end

end