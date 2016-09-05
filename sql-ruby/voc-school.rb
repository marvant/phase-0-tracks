# Vocational school database to store students info
# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("school.db")

# define a variable for creating table in database
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS school(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		address VARCHAR(255),
		age INT,
		program VARCHAR(255)
	)
SQL

# create a student info table
db.execute(create_table_cmd)


# method for entering student info into school database
def create_student(db, name, address, age, program)
	db.execute("INSERT INTO school (name, address, age, program) VALUES (?, ?, ?, ?)", [name, address, age, program])
end

# ask for data from user
puts "Enter student's name."
studnet_name = gets.chomp

puts "Enter student's address."
student_address = gets.chomp

puts "Enter student's age."
student_age = gets.chomp

puts "Enter the program."
student_program = gets.chomp

# save data from user into database
create_student(db, studnet_name, student_address, student_age, student_program)



