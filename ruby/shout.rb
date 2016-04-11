module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + " *rainbows*" + " *butterflies*"
  end
end

class Traffic
  include Shout
end

class Parents
  include Shout
end

traffic = Traffic.new
p traffic.yell_angrily("Learn to drive")
p traffic.yell_happily("Learn to drive please. It's for all our safety")

parents = Parents.new
p parents.yell_angrily("I don't want to be grounded")
p parents.yell_happily("I would love to be grounded...a well balanced grounded individual")

#driver code

# p Shout.yell_angrily("WTH")
# p Shout.yell_happily("What the happy face!")


