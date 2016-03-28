#Methods for Encrypt and Decrypt

Pseudocode:
	1) Input any string
	2) Store the next letter of each individual letter
	3) print the results as encrypted

Method:

#Advances every letter of a string one letter forward
def encrypt(string)
	
	encrypted = ""

	i = 0
	while i < string.length
		letter = string[i].next
		if letter == "aa"
			letter = "a"
		end
		encrypted = encrypted + letter
		
		i += 1
	end

	p encrypted
end




Pseudocode:
	1) Input any string
	2) Store the alphabet to reference all the letters
	3) Index the string location and index the letters location
	4) Store the letter before each individual letter
	5) print the results as decrypted


Method:

#Returns every letter of a string one letter behind
def decrypt(string)
	
	letters = "abcdefghijklmnopqrstuvwxyz"

	decrypted = ""

	i = 0
	while i < string.length
		letter = letters.index(string[i])
		decrypted = decrypted + letters[letter - 1]
		i += 1
	end

	p decrypted
	# Adding the call decrypt(encrypt("swordfish")) works because it is encrypting
	# "swordfish" which shows the results of "txpsegjti" and then it decrypts "txpsegjti" which 
	# results back to "swordfish". If it didn't encrypt it first, then the final result would've
	# done the normal call of decrypt on the word "swordfish". 
end


# encrypt("abc") returns "bcd"
# encrypt("zed") returns "afe"
# decrypt("bcd") returns "abc"
# decrypt("afe") returns "zed"

# DRIVER CODE

# ask the user whether they'd like to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password?"
input = gets.chomp

# Asks them for the password
puts "What is the password?"
password = gets.chomp

# Conducts the requested operation
if input == "decrypt"
	p decrypt(password)
elsif input == "encrypt"
	p encrypt(password)
else
	puts "Please make sure to input encrypt or decrypt"
end

puts "Program will self-destruct in 3...2...1. Bye!"
