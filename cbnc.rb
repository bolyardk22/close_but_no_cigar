def what_number
	p "Please enter a 4-digit number."
	ticket = gets.chomp
end

def lotto_func(n)
	winners = ["3748","8343","1232","8524","5242"]
	winners.include?"#{n}"
end

def lucky(x)
	if x == true
		a = "Congratulations, you're a winner!"
	else
		a = "Sorry, you lost this time."
	end
end

puts lucky(lotto_func(what_number))