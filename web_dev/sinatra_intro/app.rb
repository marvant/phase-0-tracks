# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that displays an address
get '/address/' do 
  "#{params[:house_number]} #{params[:street]}, #{params[:city]}, #{params[:state]} #{params[:zipcode]}"
end

# write a good job GET
get '/good_job/' do 
  name = params[:name]
  if name
    "Good Job, #{name}!"
  else
    "Good Job!"
  end
end

# wirte get to add two number
get '/add/:number1/:number2' do 
  n1 = params[:number1].to_i
  n2 = params[:number2].to_i
  a = n1 + n2
  "#{a}"
  
end