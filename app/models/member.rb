class Member
	attr_reader :name, :role, :house, :patronus

	def initialize(hash)
		@name = hash[:name]	
		@role = hash[:role]
		@house = hash[:house]
		@patronus = hash[:patronus]
	end
end