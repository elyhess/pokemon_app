require "rails_helper"

describe Pokemon do
	it 'exists' do
		data = { name:    "charzard",
		         id:      "12",
		         sprites: { :front_default => "image.jpg" }
						}

		pokemon = Pokemon.new(data)
		expect(pokemon).to be_an_instance_of(Pokemon)
	end

	it 'has attributes' do
		data = { name:    "charzard",
		         id:      "12",
		         sprites: { :front_default => "image.jpg" }
		}

		pokemon = Pokemon.new(data)
		expect(pokemon.name).to eq("Charzard")
		expect(pokemon.id).to eq("12")
		expect(pokemon.picture).to eq("image.jpg")
	end

end