
# Prompt the designer/user for all info (Convert any user input to the appropriate data type)
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine).  
	# 	If the designer says "none" 
	#		skip it. 
	#	else the designer enters key to be updated
	#		ask for a new value and update 
	#	

# Print the latest version of the hash
# end

puts "What is client's first name?" 
first = gets.chomp

puts "Last name: " 
last = gets.chomp

puts "Age: " 
age_num = gets.chomp

puts "number_of_children: " 
num_of_kids = gets.chomp

puts "email: "
email = gets.chomp
  
puts "phone: "
digits = gets.chomp

puts "fave_color: " 
color = gets.chomp

puts "have_pets (yes or no): " 
yes_no = gets.chomp


client = {
  first_name: first,
  last_name: last,
  age: age_num,
  number_of_children: num_of_kids,
  email: email, 
  phone: digits, 
  fave_color: color,
  have_pets: yes_no,
}

p client

puts "Update a key? Yes or No"
answer = gets.chomp.downcase

while true
	if answer == "no"
		puts "data stored and confirmed"
		break
	elsif answer == "yes"
		puts "which key needs updated?"
		key = gets.chomp.to_sym
		puts "new value: "
		client[key] = gets.chomp
		puts "update complete"
		break
	else puts "please input yes or no"
	end
end

p client

