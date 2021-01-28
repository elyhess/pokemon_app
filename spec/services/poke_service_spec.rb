require 'rails_helper'

describe PokeService do
	it 'exists' do
		poke_service = PokeService.new

		expect(poke_service).to be_an_instance_of(PokeService)
	end

	it 'returns a pokemon' do
		filename = "pokemon.json"
		url      = "https://pokeapi.co/api/v2/pokemon-form/150/"

		stub_get_json(url, filename)

		one_pokemon = PokeService.call_for_a_pokemon("150")

		expect(one_pokemon).to have_key(:name)
		expect(one_pokemon).to have_key(:id)
		expect(one_pokemon).to have_key(:sprites)
	end
end