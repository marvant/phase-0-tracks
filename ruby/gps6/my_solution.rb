# Virus Predictor
require 'pry'
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative will link the file that is within the same directory 
#to use require alone we need to type in the file path after require

require_relative 'state_data'

class VirusPredictor
#initializing instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


#calling/running the two other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#calculating number of deaths baseed on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    decimal = 0.0
    if @population_density >= 200
      decimal = 0.4
 #     number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      decimal = 0.3
      # number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      decimal = 0.2
      # number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      decimal = 0.1
      # number_of_deaths = (@population * 0.1).floor
    else
      decimal = 0.05
      # number_of_deaths = (@population * 0.05).floor
    end
    number_of_deaths = (@population * decimal).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#calculating the speed of which the virus will spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name, state_data|
  state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
  state.virus_effects
end
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# in the second hash, the hash within the hash, => is used to input data into the hash and what this dose is that it takes the key value in the hash and makes it symble.  
# on the other syntax the key and the value will be whatever is inputed into the hash

# What does require_relative do? How is it different from require?
# require_relative would link another file within the same directory.  with require_relative only the file name is required.  
# if using require alone the whole path to the file needs to be typed in.

# What are some ways to iterate through a hash?
# .each will go through all the items in hash
# .each_key goes through all the items in hash and returns the key
# .each_value goes through all the items in hash and returen the value
# .delete goes through the hash and deletes the key value item that matches the given key


# When refactoring virus_effects, what stood out to you about the variables, if anything?
# variables where assigned to each instance at initialization and they were used within the methods.  No new parameters were neccessary to be assinged for each method.

# What concept did you most solidify in this challenge?
# iterating through a hash, and calling data in a nested hash.



