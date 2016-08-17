# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  	#split the list into individual items
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
  	#call method to print a list and make it look pretty
# output: [what data type goes here, array or hash?]
	#data type hash goes here

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item to the list
# step2: add quantity to the item
# output: hash

# Method to remove an item from the list
# input: string 
# steps: locate the item in the list
# step2: remove the item from the list
# output: hash

# Method to update the quantity of an item
# input: item and quantity (key and value)
# steps: set the nubmer of items to purchase
# output: hash

# Method to print a list and make it look pretty
# input: hash
# steps: for each key value pair in our hash 
# steps2: print the key and value in a message
# output: hash 

$shopping_list = {}
$shopping_list.default = 1

def print_list (our_list)
	our_list.each do |elem, value| 
		puts "you need to buy #{value} #{elem}"
	end
end

def list (items)
	items = items.split (" ")
	items.each do |elem| 
		$shopping_list[elem] = 1
	end 
	#here we are going to call the method to printout the result
	print_list($shopping_list)
	$shopping_list
end
#list ("carrots apples cereal pizza")
# p $shopping_list ["mango"]

def add(item, n = 1)
	$shopping_list[item] = n 
	puts "#{n} #{item} has been added to the list."
	$shopping_list
end

def remove(item)
	$shopping_list.delete(item)
	puts "#{item} has been removed from the list."
	$shopping_list
end

def update (item, n = 1)
	add(item, n)
	puts "The list has been updated"
end

#This creates a list 
list("")

#This add items to list
add("Lemonade", 2)
add("Tomatos", 3)
add("Onions", 1)
add("Ice Cream", 4)


#This removes Lemonade from the list
remove("Lemonade")


#This updates quantity of Ice Cream on the list
update("Ice Cream", 1)

print_list($shopping_list)

# What did you learn about pseudocode from working on this challenge?
	# With psudocode you can think about the steps you need to take to solve a problem. Breake it down to smaller peaces and helps you stay in line.
#What are the tradeoffs of using arrays and hashes for this challenge?
	#I am not sure if there are any tradeoffs.  I think hash was more suitted for this problem because each entry had a key(item) and a value(quantity)
# What does a method return?
	#Ruby returns the last line in any method, but you can have method return anything, a message, a string, array, hash and etc..
# What kind of things can you pass into methods as arguments?
	#you can pass string, integer, variable, array, or hash into method.
# How can you pass information between methods?
	#One way is to call a method within another method
# What concepts were solidified in this challenge, and what concepts are still confusing?
	#hashes are solidifed but need little more practice with methods 









