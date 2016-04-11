#Pseudocode design

# robot fighters 
# set up initialize method and pass in name
# 	make name attribute so it can pass through different spots
# 	print initializing super robot named #{name}
# 	add level with default of 1
# 	add weapons array
# build character method
# 	if called upon, user will get +1 level
# 		@level += 1
# 	set up bonus damage with default of 0
# 		@bonus damage so other methods can access
# add weapon method
# 	print weapon that user will get using sample method
# 	bonus damage += 1
# attack method
# 	hit variable using random gen up to 10 points
# 	total attack variable that adds hit and bonus damage points accumulated
# 	p user total attack
# 	enemy attack using random gen up to 10 points
# 	IF user total attack > enemy attack
# 		p you won 
# 		add level
# 	ELSIF equal
# 		p tie
# 	ELSE user total attack < enemy attack
# 		p you lost
# 		lose level

class Robot_fighters
	
	attr_reader :level, :weapon, :bonus_damage, :hit, :wins, :losses
	attr_accessor :name
	
	def initialize(name)
		p "initializing your super robot named #{name}"
		@name = name
		@level = 1
		@bonus_damage = 0
		@weapon = ["bazooka", "machine_guns", "rocket_launcher", "super_blade", "wrecking_ball"]
		@wins = 0
		@losses = 0
		
	end
	
	def build_character
		@level += 1
		p "your level increased to #{@level}! bonus damage of +1"
		@bonus_damage += 1
	end
	
	def add_weapon
		 p "you earned a weapon: #{@weapon.sample}. Bonus damage of +1"
		 @bonus_damage += 1
	end
		
	def attack
		@hit = rand(10)
		total_attack = @hit + @bonus_damage
		p "#{@name} attacks enemy for #{total_attack} damage"
		#{@name}_damage = total_attack
		enemy_attack = rand(10)
		p "enemy attacks for #{enemy_attack} damage"
		if total_attack > enemy_attack
			p "You WON! Increase one level"
			@level += 1
			@wins += 1
		elsif total_attack == enemy_attack
			p "Ooooh, tie. No one wins =("
		else
			p "You lost. You lose one level"
			@level -= 1
			@losses += 1
		end
	end
		
	def record
		p "#{name}'s results: Wins: #{wins}, Losses: #{losses}."
	end
	
	
end

# char = Robot_fighters.new("ken")
# char.build_character
# char.add_weapon
# char.attack

results = []

while true
	p "Welcome to Robot Fighters. Let's start a character. Please input a name: "
	name = gets.chomp

	results << char = Robot_fighters.new(name)

	p "please input if you would like to BUILD CHARACTER, ADD WEAPON, or ATTACK (or type DONE when done with this character):  "
	input = gets.chomp.downcase

	until input == "done"
		if input == "build character"
			char.build_character
			p "what next? BUILD CHARACTER, ADD WEAPON, or ATTACK (or type DONE when done with this character):  "
			input = gets.chomp.downcase
		elsif input == "add weapon"
			char.add_weapon
			p "what next? BUILD CHARACTER, ADD WEAPON, or ATTACK (or type DONE when done with this character):  "
			input = gets.chomp.downcase
		elsif input == "attack"
			char.attack
			p "what next? BUILD CHARACTER, ADD WEAPON, or ATTACK (or type DONE when done with this character):  "
			input = gets.chomp.downcase
		else 
			p "did not recognize input. please type BUILD CHARACTER, ADD WEAPON, or ATTACK (or type DONE when done with this character):  "
			input = gets.chomp.downcase
		end
	end
	
	p "would you like to start a new character? type YES or NO"
	answer = gets.chomp.downcase
		if answer == "no"
			break
		elsif answer == "yes"
			true
		else
			p "did not recognize input. please type YES or NO"
			answer = gets.chomp.downcase
		end
			
end

results.each do |result| 
	result.record 
end






		
