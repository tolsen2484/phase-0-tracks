#5.1

# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
    p "iNvEsTiGaTiOn".swapcase

# "zom".<???>
# => “zoom”
    p "zom".insert(1, "o")

# “enhance”.<???>
#=> “    enhance    ”
    p "enhance".center(15)

# “Stop! You’re under arrest!”.<???>
# => “STOP! YOU’RE UNDER ARREST!”
    p "Stop! You're under arrest!".upcase

# “the usual”.<???>
#=> “the usual suspects”
#1st suspect
    p "the usual".insert(-1, " suspects")
#2nd suspect
    a = "suspects"
    a.prepend("the usual ") 
    p a


#“ suspects”.<???>
#=> “the usual suspects”
#1st suspect
    p " suspects".insert(0, "the usual")
#2nd suspect
    a = " suspects"
    a.prepend("the usual") 
    p a

# “The case of the disappearing last letter”.<???>
# => “The case of the disappearing last lette”
 #1st suspect
 	p "The case of the disappearing last letter".chop
 #2nd suspect
  	p "The case of the disappearing last letter".slice(0...-1)
 #3rd suspect
 	p "The case of the disappearing last letter".chomp("r")

# “The mystery of the missing first letter”.<???>
# => “he mystery of the missing first letter”.
 #1st suspect
 	string = "The case of the disappearing first letter"
 	string[1..string.length]
 #2nd suspect
  	p "The case of the disappearing first letter".slice(1..-1)

# “Elementary  ,    my   dear      Watson!”.<???>""
# => “Elementary, my dear Watson!”
	string = "Elementary  ,    my   dear      Watson!".squeeze(" ")
	string.slice!(10)
	p string


# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
	p "z".ord
	#Returns the Integer ordinal of a one-character string. "y" is 121, "x" is 120, etc.. but obviously "a" is not 1. Different character is "set" at 1. 

#“How many times does the letter ‘a’ appear in this string?”.<???>
#=> 4

	p "How many times does the letter ‘a’ appear in this string?".count("a")

