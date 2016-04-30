class Santa
	
	attr_reader :gender, :ethnicity
	attr_accessor :age
	

	def initialize(gender, ethnicity)
		puts 'initializing Santa instance ...'
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_rankings = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		
	end

	def speak
		puts 'Ho, ho, ho! Haaaappy holidays!'
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
	
	def celebrate_birthday
		puts "Happy Birthday!"
		@age += 1
	end
	
	def get_mad_at(reindeer)
		puts "You did it again #{reindeer}! Back of the line!"
		@reindeer_rankings.delete(reindeer)
		@reindeer_rankings << reindeer
		puts "New order starting today will be: #{@reindeer_rankings}"
	end
end



santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Asian", "European", "Monster-ian" ]



santa_clause = Santa.new(santa_genders.sample, santa_ethnicities.sample)
santa_clause.speak
# santas.each { |santa| santa.speak } 
santa_clause.get_mad_at("Vixen")
santa_clause.celebrate_birthday 

i = 0
while i < 50
	@age = rand(140)
	santa_clause = Santa.new(santa_genders.sample, santa_ethnicities.sample)
	puts "SantaCon Rocks! I'm a #{@age} year old #{santa_clause.ethnicity} #{santa_clause.gender} santa!"
	i += 1
end