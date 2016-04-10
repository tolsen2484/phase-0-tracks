
class Santa

	def initialize(gender, ethnicity)
		@reindeer_rankings = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		p 'initializing Santa instance ...'
	end

	def speak
		p 'Ho, ho, ho! Haaaappy holidays!'
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
	end

end

#driver code 

santa_con = Santa.new
santa_con.speak
santa_con.eat_milk_and_cookies("Macadamia Nut")


#adding Santa instances to empty array for release 1
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santas.each { |santa|  }