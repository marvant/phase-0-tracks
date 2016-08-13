def build_array(a, b, c)
	new_array = [a, b, c]
end

def add_to_array(arr, item)	
	arr << item
end

initial_array = []
p initial_array

initial_array += ["item1", "item2", "item3", "item4", "item5"]
p initial_array

initial_array.delete_at(2)
p initial_array

initial_array.insert(2, "item3.1")
p initial_array

initial_array.shift
p initial_array

puts "this array contains item4: "
p initial_array.include?("item4")

second_array = [1,2,3]
combined_array = initial_array + second_array
p combined_array

p build_array(4, 5, 6)
p add_to_array(["a", "b", "c", 1, 2], 3)
