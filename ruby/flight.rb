module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
  include Flight
end

class Airplane
  include Flight
end

bird = Bird.new
bird.take_off(800)

airplane = Airplane.new
airplane.take_off(30000)