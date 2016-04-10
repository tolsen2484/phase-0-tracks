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


class Weight_lifting

  def initialize
    p "Initializing new weight lifting instance..."
  end

  def sets(repetition)
    repetition.times { p "lift" }
  end

  def running(minutes)
    p "You've ran for #{minutes} minutes"
    minutes
  end

end

workout = []

50.times { workout << weight_lifter = Weight_lifting.new }


workout.each do |i|
  i.sets(2)
  i.running(20)
end

