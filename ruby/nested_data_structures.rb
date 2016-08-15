#nested data structure containing list of car manufacturers in the right type list
cars = {
	regular: [
		"Honda", "Toyota", "Nissan", "Ford", "VW", "Mazda"
	],
	luxury: [
		"BMW", "Benz", "Lexus", "Acura", "Audi"
	],
	supercars: [
		"Lamborghini", "Ferrari", "Bugatti"
	]
}

#printing data from nested structure
p cars
p cars.keys
p cars[:regular]
p cars[:luxury][1]
p cars[:supercars][2].upcase
