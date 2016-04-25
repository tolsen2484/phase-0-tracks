#RELEASE 1

#Initialize an empty array and store it in a variable (you can choose the name). 
#Print the variable using p.

new_array = Array.new
p new_array

#extra practice
blank = []
p blank

#Add five items to your array. Print the array.

new_array = ["blue","red","yellow","green","white"]
p new_array

blank << "blue"
blank << "red"
blank << "yellow"
blank << "green" 
blank << "white"
p blank

#Delete the item at index 2. Print the array.

new_array.delete_at(2)
p new_array 

blank.delete_at(1)
p blank
blank.delete("blue")
p blank

#Insert a new item at index 2. Print the array.

new_array.insert(2, "orange")
p new_array

blank.insert(0, "new_color")
p blank

# #Remove the first item of the array without having to refer to its index. Print the array.

new_array.shift
p new_array

# #Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)

new_array.include?("orange") 
	if true
		p "It is included!"
	else
		p "It is NOT included!"
	end

# #Initialize another array that already has a few items in it.

another_array = ["pink", "rainbow"]


# #Add the two arrays together and store them in a new variable. Print the new array.

p new_array + another_array


# #RELEASE 2

# #At the top of your file, add a method that takes three items as parameters and returns an array of those items. So build_array(1, "two", nil) would return [1, "two", nil]. This won't take much code, but the syntax might feel a bit odd. At the bottom of the file, call the method to show that it works.

def three_array(x, y, z)
 	array = [x, y, z]
end

p three_array(5, 6, 7)

# #At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added. So add_to_array([], "a") would return ["a"], and add_to_array(["a", "b", "c", 1, 2], 3) would return ["a", "b", "c", 1, 2, 3]. Print a few test calls of the method.

def add_to_array(arr, item)
 	arr << item
end

p add_to_array(["a", "b", "c", 1, 2], 3)
p add_to_array([], "a")
p add_to_array(["blue", "red", "white"], "yellow")