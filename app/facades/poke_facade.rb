class PokeFacade
	class << self
		def get_a_pokemon(pokemon)
			conn = Faraday.new("https://pokeapi.co")
			response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
			data = JSON.parse(response.body, symbolize_names: true)
			Pokemon.new(data)
		end
	end
end