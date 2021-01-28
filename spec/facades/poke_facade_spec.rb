require 'rails_helper'

describe PokeFacade do
	it 'exists' do
		poke_facade = PokeFacade.new
		expect(poke_facade).to be_an_instance_of(PokeFacade)
	end

	describe "class methods" do
		it 'should return pokemon by id or name searched' do
			filename = "pokemon.json"
			url      = "https://pokeapi.co/api/v2/pokemon-form/mewtwo/"

			stub_get_json(url, filename)

			pokemon = PokeFacade.get_a_pokemon("mewtwo")

			expect(pokemon).to be_an_instance_of(Pokemon)
		end
	end
end