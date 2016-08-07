def encrypt (str)
	index = 0
	while index < str.length
		str[index] = str[index].next
		index += 1
	end
	puts str
end

puts "type in a word"
str = gets.chomp
encrypt (str)

def decrypt (str)
	i=0
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
end

puts "type in another word"
str = gets.chomp
decrypt(str)