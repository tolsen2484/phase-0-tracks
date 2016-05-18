
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
# db.execute("INSERT INTO superhero (name, superhero_name) 
#   VALUES ('Pablo Patterson', 'El Guaca Mole')")

# db.execute("INSERT INTO threat_level (threat_level_number) 
#   VALUES ('Level 1 - low threat')")
# db.execute("INSERT INTO threat_level (threat_level_number) 
#   VALUES ('Level 2 - some threat')")
# db.execute("INSERT INTO threat_level (threat_level_number) 
#   VALUES ('Level 3 - medium threat')")
# db.execute("INSERT INTO threat_level (threat_level_number) 
#   VALUES ('Level 4 - high threat')")
# db.execute("INSERT INTO threat_level (threat_level_number) 
#   VALUES ('Level 5 - Extreme threat')")


#creates and inserts new heroes
def create_heroes(db, name, superhero_name, threat_level, power)
  db.execute("INSERT INTO superhero (name, superhero_name, threat_level_id, power_id) VALUES (?, ?, ?, ?)", [name, superhero_name, rand(1..5), rand(1..15)])
end


##creates 10 fake names and 10 fake superhero names
# 10.times do
#   create_heroes(db, Faker::Name.name, Faker::Superhero.name, rand(1..5), rand(1..15))
# end

##create 15 super powers list
# 15.times do
#   db.execute("INSERT INTO powers (power) VALUES (?)", [Faker::Superhero.power])
# end


# # use ORM to retrieve data 
# superhero = db.execute("SELECT * FROM superhero")
# superhero.each do |data|
#   puts "#{data['superhero_name']}'s true identity is #{data['name']}"
# end



###methods for the input that employees will enter
def add_hero(db, name, superhero_name, threat_level, power_id)
  create_heroes(db, name, superhero_name, threat_level, power_id)
  puts "You successfully added #{superhero_name}"
end

##test add_hero
# p add_hero(db, "Tolsi", "Terminatorrr", 5, 10)


## test delete_hero
def delete_hero(db, superhero_name)
  db.execute("DELETE FROM superhero WHERE superhero_name = ?", [superhero_name])
end

# p delete_hero(db, "Terminatorrr")


##show_report without the id numbers
def show_report(db)
   puts db.execute("SELECT name, superhero_name, powers.power, threat_level.threat_level_number FROM superhero JOIN powers ON powers.id = superhero.power_id JOIN threat_level ON threat_level.id = superhero.threat_level_id")
end

# p show_report(db)


##list starting from highest threat number
def highest_threat(db)
   puts db.execute("SELECT superhero_name, threat_level.threat_level_number FROM superhero JOIN threat_level ON threat_level.id = superhero.threat_level_id ORDER BY threat_level_number DESC")
end

# p highest_threat(db)


loop do 

  puts "Please input a number: "
  puts "1: add hero"
  puts "2: delete hero"
  puts "3: show superhero report"
  puts "4: highest threat list"
  puts "5: to exit program"
  
  input = gets.chomp.to_i

   if input == 1
     puts "Input: name, superhero_name, threat_level, power_id (type 'cancel' if you want to cancel input)"
     answer = gets.chomp
        if answer == "cancel"
          break
        end
     array = answer.split(" ,")
     add_hero(db, array[0], array[1], array[2], array[3])

   elsif input == 2
     puts "Which hero will be deleted? (type 'cancel' if you want to cancel deletion)"
     answer = gets.chomp
        if answer == "cancel"
          break
        end
     delete_hero(db, "#{answer}")

   elsif input == 3
      show_report(db)

   elsif input == 4
      highest_threat(db) 

   elsif input == 5 
      break  

   else puts "Please input valid number" 
  end
end


