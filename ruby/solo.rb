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

# #driver codes
# new_player = Soccer_player.new("Messi", 29, 5.7)
# puts "Player Info: name: #{new_player.name}; age: #{new_player.age}; height: #{new_player.height}, position: #{new_player.position}"
# new_player.shoot
# new_player.player_poistion("Forward")
# puts "Player Info: name: #{new_player.name}; age: #{new_player.age}; height: #{new_player.height}, position: #{new_player.position}"


#user interface
#user can enter as many new palyers as desiered and type done to exit
new_player = []
count = 0
puts "Enter new player's name or type done to exit"
name = gets.chomp

until name == "done"
puts "Enter new player's age"
age = gets.chomp.to_i
puts "Enter new player's height"
height = gets.chomp.to_f
new_player[count] = Soccer_player.new(name, age, height)
puts "Player Info: name: #{new_player[count].name}; age: #{new_player[count].age}; height: #{new_player[count].height}, position: #{new_player[count].position}"
count += 1
puts "Enter new player's name or type done to exit"
name = gets.chomp
end

#Once user is done with entering players' info each loop will print all the players entered
puts "Here is the list of all your players:"
new_player.each do |x| puts "#{new_player.index(x)+1}: Name: #{new_player[new_player.index(x)].name}; Age: #{new_player[new_player.index(x)].age}; Height: #{new_player[new_player.index(x)].height}"
end












