module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + " *rainbows*" + " *butterflies*"
  end
end

#driver code

# p Shout.yell_angrily("WTH")
# p Shout.yell_happily("What the happy face!")

class Traffic
  include Shout
end

class Parents
  include Shout
end



traffic = Traffic.new
puts traffic.yell_angrily("Learn to drive")
puts traffic.yell_happily("Learn to drive please. It's for all our safety")

parents = Parents.new
puts parents.yell_angrily("You're grounded")
puts parents.yell_happily("You're grounded! But now we can spend quality time together...")




