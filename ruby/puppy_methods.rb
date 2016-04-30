class Puppy

  def initialize
    p "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times { puts "woof" }
  end

  def roll_over
    p "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years/7
    p dog_years
  end

  def sit
    p "*sits*"
  end

end

#driver code
rover = Puppy.new
rover.fetch("squeaky toy")
rover.speak(5)
rover.sit
rover.dog_years(35)


#initialized method and at least two other instance methods


class Karate

  def initialize
    puts "Initializing new killer combos..."
  end

  def punch(num_of_punches)
    num_of_punches.times { p "super punch" }
  end

  def kick(num_of_kicks)
    num_of_kicks.times { p "kool kick" }
  end
    
  def super_move(num)
    puts "Like...omg, that's like #{num} super moves"
  end

end

combos = []

50.times { combos << Karate.new }


combos.each do |i|
  i.punch(5)
  i.kick(4)
  i.super_move(10)
end

