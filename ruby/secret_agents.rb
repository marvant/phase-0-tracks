puts "type is a word"
index = 0
str = gets.chomp

while index < str.length
	str[index] = str[index].next
	index += 1
end
puts str

puts "type in another word"
i=0
str = gets.chomp
alphabet = "abcdefghijklmnopqrstuvwxyz"

while i < str.length
	x = alphabet.index(str[i])
	x.to_i
	y = x - 1
	z = alphabet[y]
	str [i] = z
	i += 1
end
puts str