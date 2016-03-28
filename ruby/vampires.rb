puts "How many employees will be processed?"
count = gets.chomp.to_i

while count > 0

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year_born = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_response = gets.chomp

	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp
	
	allergies = []
	until allergies.include?("done")
		puts "Please list ALL of your allergies one by one. When done, type DONE and enter"
		answer = gets.chomp.downcase
		if answer == "sunshine"
			p "probably a vampire"
			break
		end
		allergies.push(answer)
	end
			
		
	age_right = false

	if ((2016 - year_born) == age) || ((2015 - year_born) == age)
    	age_right = true
	end


	puts case
	when age_right && (garlic_response == "yes" || insurance == "yes")
		p "Probably not a vampire."
	when !age_right && garlic_response == "no" && insurance == "no"
		p "Almost certainly a vampire." 
	when !age_right && (garlic_response == "no" || insurance == "no")
		p "Probably a vampire." 
	when name == ("Drake Cula" || "Tu Fang")
		p "Definitely a vampire."
	else p "Results inconclusive."
	end
	
	count -= 1
end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 