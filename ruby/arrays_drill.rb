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
p initial_array.include?("item9")

second_array = [1,2,3]
combined_array = initial_array + second_array
p combined_array
