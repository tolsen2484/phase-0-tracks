# Virus Predictor

# I worked on this challenge [by myself, with: Ben Goldstein].
# We spent [#] hours on this challenge.
# => 1.5 hours
# EXPLANATION OF require_relative
# => Require relative statements let us access the file that's relative to us, 
#     without having to put in the whole path. Require "requires" us to put whole path
#
require_relative 'state_data'

class VirusPredictor

#creates a new instance of VirusPredictor, sets instance variables for the 3 arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


#calls predicted deaths and speed of spread using the methods below
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
    

#private can only be called internally and not from outside the class
private


#predicts the deaths based on population density using the if,elsif,else statements. And then prints a statement using interpolation 
#describing predicted deaths
  def predicted_deaths
    
    # predicted deaths is solely based on population density
    
    if @population_density >= 200
      n = 0.4

    elsif @population_density >= 150
      n = 0.3

    elsif @population_density >= 100
      n = 0.2

    elsif @population_density >= 50
      n = 0.1

    else
      n = 0.05

    end
    
    number_of_deaths = (@population * n).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#calculates how fast the virus will spread based on population_density. And then prints
#a statement describing the speed of spread
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

STATE_DATA.each do |state, info|
    state_virus = VirusPredictor.new(state, info[:population_density], info[:population]).virus_effects 
end




#=======================================================================
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




