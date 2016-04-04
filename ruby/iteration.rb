#Release 0

def compliment
	puts "Uhhhh, helllllllo pretty girl."
	5.times { yield("WOW", "LOVELY") }
end

compliment { |comp1, comp2| puts "Ummmm, you are like ummmm #{comp1} and oh so.... #{comp2}!!!!" }


#Release 1

fav_animals = ["dog", "cat", "bird", "penguin"]

wildcat_rankings =  {"defense" => 4.5, "offense" => 4.1, "punts" => 3.4, "academics" => 4.7}

# .each method on array

p fav_animals

fav_animals.each do |animal|
	p "I like #{animal}s!!"
end

p fav_animals

# .each method on hash

p wildcat_rankings

wildcat_rankings.each do |skill, rank|
	p "This year, the #{skill} is ranked at #{rank}"
end

p wildcat_rankings


# .map! method on array

p fav_animals

fav_animals.map! do |animal|
	p "I like #{animal}s!!"
	animal.upcase + "!"
end

p fav_animals

#1) A method that iterates through the items, deleting any that meet a certain condition (for example, #deleting any numbers that are less than 5).

ratings = [3,6,9,1,4,8,2]

ratings.delete_if do |delete|
	delete < 4
end

p ratings


grades = { "A" => "history", "B" => "math", "D" => "Social Studies", "F" => "PE" }

grades.delete_if { |subject, grade| subject >= "C" }

p grades


#2) A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

array = [3,6,9,1,4,8,2]

array.select! do |num|
	num >= 5
end

p array

menu = { "fries" => 4, "hamburger" => 6, "soda" => 5, "jumbo beer" => 10, "jumbo dog" => 9 }

menu.select! do |item, cost|
	cost < 7
end

p menu

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

array = [10, 9, 8, 7, 6, 5, 4, 4, 3, 2, 1]

array.reject! { |fixnum| fixnum < 5 }

p array



drink = {"strawberry" => 5.50, "mango" => 4.49, "blueberries" => 4.69, "jackfruit" => 7.77, "monster" => 2.49}

drink.keep_if { |smoothie, cost| cost < 5.00}

p drink


#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.

array = [1,2,3,4,5,6,7,8,9,10]

array.keep_if { |num| num.even? }

p array 



innout = { "hamburger" => "ok price", "cheeseburger" => "great", "smoothie" => "expensive", "fries" => "ok price", "small drink" => "expensive", "innout" => "great"}

innout.keep_if { |product, cost| cost == "great" }

p innout
