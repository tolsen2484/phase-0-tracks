def swap_names(name)
  split = name.split(" ")
  swap = split.reverse.join(" ")
end

p swap_names("Bob Smith")


#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
#and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet


def next_letters(string)

  string = swap_names(string)
  
  letters = string.split("")
  
  
  next_letters = letters.map! do |letter|
    next_vowel?(letter)
  end
  
  next_letters.join("")
  
  
end

  
def next_vowel?(letter)
  
vowels = ["a","e","i","o","u","A","E","I","O","U"]


  if letter == "u"
    letter = "a"
  elsif letter == "U"
    letter = "A"
  elsif letter == " "
    letter = " "
  elsif vowels.include?(letter)
    letter = vowels[vowels.index(letter) + 1]
  elsif letter == "d" || letter == "h" || letter =="n" || letter == "t"
    letter = letter.next.next
  elsif letter == "D" || letter == "H" || letter =="N" || letter == "T"
    letter = letter.next.next
  else 
    letter = letter.next
  end

end

  
p next_letters("Felicia Torres")


#stores names until user types 'quit'. after user quits, it will repeat all names they inputted

storage = []
name = ""

until name == "quit"
  puts "Type in a name (type 'quit' to exit program)"
  name = gets.chomp
  p "Your name is now: " + next_letters(name) + "!"
  storage << name
end

storage.each {|i| puts "Hello #{i} aka " + next_letters(i) }
