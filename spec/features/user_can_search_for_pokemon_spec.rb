require 'rails_helper'

RSpec.describe "as a visitor" do
  describe "when I search for a pokemon" do
    it 'I see results' do
      filename = "pokemon.json"
      url      = "https://pokeapi.co/api/v2/pokemon-form/mewtwo/"

	    stub_get_json(url, filename)

      visit root_path

      fill_in :pokemon, with: "mewtwo"

      click_button "Search"

      expect(current_path).to eq(pokemon_index_path)

      expect(page).to have_content("Mewtwo")
      expect(page).to have_content("Id #150")
    end
  end
end
