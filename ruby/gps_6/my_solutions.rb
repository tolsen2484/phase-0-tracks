# Virus Predictor

# I worked on this challenge [by myself, with: Luis S].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is when it's relative to the statement and require is for libraries
# 

require_relative 'state_data'

class VirusPredictor

#used to instance a new class and accept 3 arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calling the 2 methods below within the class
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private

#predicting the deaths based on the state's population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#show the speed in months based on the population density
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


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# STATE_DATA.each_key do | state  |
#     state_info = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
#     state_info.virus_effects
# end

STATE_DATA.each do | state, info  |
    state_info = VirusPredictor.new(state, info[:population_density], info[:population])
    state_info.virus_effects
end


# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# => One is a constant variable. Its value is supposed to remain constant for the duration of the program but can change (warning will be issued)
# What does require_relative do? How is it different from require?
# => Require relative statements let us access the file that's relative to us, 
#     without having to put in the whole path. Require "requires" us to put whole path
# What are some ways to iterate through a hash?
# => .each or .each_key or .times    ...
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# => a lot of repitition. The methods it were calling already has access to the instance variables so no need to repeat
# What concept did you most solidify in this challenge?
# => refactoring the codes