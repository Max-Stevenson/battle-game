class Player
	attr_reader :name, :hitpoints
	DEFAULT_HP = 60

	def initialize (name, hitpoints = DEFAULT_HP)
		@name = name
		@hitpoints = hitpoints
	end

	def receive_damage
		@hitpoints -= 10
	end
end