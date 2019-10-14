class OrderOfThePhoenixService

	def character_data
		data = conn.get("characters")
		JSON.parse(data.body, symbolize_names: true)
	end

	private
	def conn
		Faraday.new(url: "https://www.potterapi.com/v1/") do |f|
		  f.adapter  Faraday.default_adapter
		  f.params[:key] = ENV["POTTER_API_KEY"]
		  f.params[:orderOfThePhoenix] = true
		end
	end
end