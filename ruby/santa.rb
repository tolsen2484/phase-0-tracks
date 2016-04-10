class Santa

	def initialize(gender, ethnicity)
		p 'initializing Santa instance ...'
		@reindeer_rankings = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		
	end

	def speak
		p 'Ho, ho, ho! Haaaappy holidays!'
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
	end

end

santas = []

santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santa_genders.length.times do |i|
  santas << Santa.new(santa_genders[i], santa_ethnicities[i])
end

santas.each { |santa| santa.speak } 



