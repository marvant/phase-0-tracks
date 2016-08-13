# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
p "Bcd".swapcase

p "zom".insert(1,'o')
# => “zoom”
p "tst".insert(1, 'e')

p ("enhance".ljust(11)).rjust(15)
# => "    enhance    "
p ("space".ljust(10)).rjust(15)

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
p "upercase everything".upcase

p "the usual".insert(9,' suspects')
#=> "the usual suspects"
p "add word to ".insert(12, "string")

p " suspects".insert(0, 'the usual')
# => "the usual suspects"
p " to the begining".insert(0, "add")

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
p "remove the last letterr".chop

p "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"
p "rremove the first letter".reverse.chop.reverse

p "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"
p "get     rid of      extra      space".squeeze

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# each character is a represented by a number between 0 and 127. 
# 122 is the assigned number for "z".  The opposite of ord is chr
# 122.chr will return "z"
p "b".ord

p "How many times does the letter 'a' appear in this string?".count "a"
# => 4
p "count how many letter 'n' is used in this sentance".count "n"