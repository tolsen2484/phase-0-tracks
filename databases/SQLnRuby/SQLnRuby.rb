
# 

# require gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database
db = SQLite3::Database.new("combine.db")

# use string delimiters to create tables
create_table_superhero = <<-SQL
  CREATE TABLE IF NOT EXISTS superhero(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    superhero_name VARCHAR(255),
    threat_level_id INT,
    power_id INT,
    FOREIGN KEY (threat_level_id) REFERENCES threat_level(id),
    FOREIGN KEY (power_id) REFERENCES powers(id)
  )
SQL

create_table_threatlevel = <<-SQL
  CREATE TABLE IF NOT EXISTS threat_level(
    id INTEGER PRIMARY KEY,
    threat_level_number VARCHAR(255)
  )
SQL

create_table_powers = <<-SQL
  CREATE TABLE IF NOT EXISTS powers(
    id INTEGER PRIMARY KEY,
    power VARCHAR(255)
  )
SQL

# # creates tables from above 
db.execute(create_table_superhero)
db.execute(create_table_threatlevel)
db.execute(create_table_powers)
db.results_as_hash = true


# # drivercode
db.execute("INSERT INTO superhero (name, superhero_name) 
  VALUES ('Pablo Patterson', 'El Guaca Mole')")

db.execute("INSERT INTO threat_level (threat_level_number) 
  VALUES ('Level 1 - low threat')")
db.execute("INSERT INTO threat_level (threat_level_number) 
  VALUES ('Level 2 - some threat')")
db.execute("INSERT INTO threat_level (threat_level_number) 
  VALUES ('Level 3 - medium threat')")
db.execute("INSERT INTO threat_level (threat_level_number) 
  VALUES ('Level 4 - high threat')")
db.execute("INSERT INTO threat_level (threat_level_number) 
  VALUES ('Level 5 - Extreme threat')")


#creates and inserts new heroes
def create_heroes(db, name, superhero_name, threat_level, power)
  db.execute("INSERT INTO superhero (name, superhero_name, threat_level_id, power_id) VALUES (?, ?, ?, ?)", [name, superhero_name, rand(1..5), rand(1..15)])
end


##creates 10 fake names and 10 fake superhero names
10.times do
  create_heroes(db, Faker::Name.name, Faker::Superhero.name, rand(1..5), rand(1..15))
end

15.times do
  db.execute("INSERT INTO powers (power) VALUES (?)", [Faker::Superhero.power])
end


# # use ORM to retrieve data 
superhero = db.execute("SELECT * FROM superhero")
superhero.each do |data|
  puts "#{data['superhero_name']}'s true identity is #{data['name']}"
end



###methods for the input employees will enter

# add managers to the table managers
# def add_hero(db, name, superhero_name, threat_level, power)
#   create_heroes(db, name, superhero_name, threat_level, power)
# end

# # delete managers from table managers
# def delete_hero(db, name, superhero_name, threat_level, power)
#   db.execute("DELETE FROM superhero WHERE name = ?", [name])
# end

# # add items to the table items
# def add_item(store_database, item_name, quantity, price)
#   store_database.execute("INSERT INTO items (item_name, quantity, price) 
#     VALUES (?, ?, ?)", [item_name, quantity, price])
# end

# # delete item by name
# def delete_item(store_database, item_name)
#   store_database.execute("DELETE FROM items WHERE item_name = ?", [item_name])
# end

# # add customer to the table customers
# def add_customer(store_database, customer_name, card_number)
#   store_database.execute("INSERT INTO customers (customer_name, card_number) 
#     VALUES (?, ?)", [customer_name, card_number])
# end

# # delete customer from the table customers
# def delete_customer(store_database, customer_name)
#   store_database.execute("DELETE FROM customers WHERE customer_name = ?", [customer_name])
# end

# def user_interface(store_database)
#   puts "Please select one of following the options: "
#   puts "Type 1 for adding an item"
#   puts "Type 2 for deleting an item"
#   puts "Type 3 for adding a customer"
#   puts "Type 4 for deleting a customer"
#   puts "Type 5 for adding a manager"
#   puts "Type 6 for deleting a manager"
#   user_selected_option = gets.chomp.to_i

#   if user_selected_option == 1
#     puts "Enter the item name you want to add: "
#     item_to_add = gets.chomp
#     puts "Enter the quantity: "
#     item_quantity = gets.chomp.to_i
#     puts "Enter the price: "
#     item_price = gets.chomp.to_i
#     add_items(store_database, item_to_add, item_quantity, item_price)

#   elsif user_selected_option == 2
#     puts "Enter the name of the item to delete: "
#     item_to_delete = gets.chomp
#     delete_item(store_database, item_to_delete)

#   elsif user_selected_option == 3
#     puts "Enter customer's name: "
#     customer_to_add = gets.chomp
#     puts "Enter customer's card number: "
#     customer_card_number = gets.chomp.to_i
#     add_customer(store_database, customer_to_add, customer_card_number)

#   elsif user_selected_option == 4
#     puts "Enter the name of the customer to delete: "
#     customer_to_delete = gets.chomp
#     delete_customer(store_database, customer_to_delete)

#   elsif user_selected_option == 5
#     puts "What's the manager's name?"
#     manager_name = gets.chomp
#     puts "What is the manager's idn?"
#     manager_number = gets.chomp.to_i
#     add_manager(store_database, manager_name, manager_number)

#   elsif user_selected_option == 6
#     puts "Enter name of manager to delete: "
#     manager_to_delete = gets.chomp
#     delete_manager(store_database, manager_to_delete)
#   else
#     puts "Sorry, I did not get that!"
#   end
# end


# # USER INTERFACE

# # manager identification number: 76890
# loop do 

#   puts "-----------"
#   puts "Enter your 5-digit identification number(idn), or type '0' to exit:"
#   manager_idn = gets.chomp.to_i
#   # verify if the number matches the database
#   manager_identification(store_database, manager_idn)
#   # break out of the loop
#   break if manager_idn == 0

#   if manager_identification(store_database, manager_idn) == true
#     # call the method
#     user_interface(store_database)
#     break
#   else
#     puts "You are not authorized to access the database"
#   end

# end
