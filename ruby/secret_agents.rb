
def encrypt (str)
	index = 0
	while index < str.length
		if str[index] == "z"
			str[index] = "a"
		elsif str[index] == "9"
			str[index] = "1"
		else
		str[index] = str[index].next
	end
		index += 1
	end

	puts str

end

encrypt("abc")
encrypt("zed")


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

decrypt("bcd")
decrypt("afe")