class Pokemon
	attr_reader :name,
	            :id,
	            :picture

	def initialize(data)
		@name    = data[:name]
		@id      = data[:id]
		@picture = data[:sprites][:front_default]
	end

end