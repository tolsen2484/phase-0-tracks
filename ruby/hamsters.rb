p "What is the hamster's name?"
name = gets.chomp.capitalize

p "What volume is the hamster from 1 to 10 (1 being the lowest)?"
volume = gets.chomp.to_i

p "What color is the fur?"
fur_color = gets.chomp

p "Is the hamster a good candidate for adoption?"
adoptable = gets.chomp.upcase

p "What is the estimated age?"
age = gets.chomp

if age == ""
	age = "nil"
else age == age.to_i
end

p "Hamster's name is #{name}."
p "Volume is at #{volume}."
p "Fur color is #{fur_color}."
p "Adoptable: #{adoptable}."
p "Estimated age: #{age}."
