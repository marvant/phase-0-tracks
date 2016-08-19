#create new class
class Soccer_player
	attr_reader :name, :height
	attr_accessor :age, :position

	#initialization method to print a message when new instance (player) is created
	def initialize (name, age, height)
		puts "initializing new player."
		@name = name
		@age = age
		@height = height
	#pre-set attribute
		@position = "TBD"
	end

#method to shoot the ball
	def shoot
		puts "#{@name} shoots the ball"
	end

#method to cross the ball
	def cross
		puts "#{@name} crosses the ball"
	end

#method to score
	def score
		puts "Gooooooooooooooooaaaaaaaalllll....#{@age} year old #{@name} scores."
	end

#method for assigning a position to a player (a method that takes an argument)
	def player_poistion(poition)
		@position = poition
		puts "#{@name} plays in #{@position} position."
	end

end

#driver codes
new_player = Soccer_player.new("Messi", 29, 5.7)
puts "Player Info: name: #{new_player.name}; age: #{new_player.age}; height: #{new_player.height}, position: #{new_player.position}"
new_player.shoot
new_player.player_poistion("Forward")
puts "Player Info: name: #{new_player.name}; age: #{new_player.age}; height: #{new_player.height}, position: #{new_player.position}"