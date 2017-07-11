def what_number
	p "Please enter a 4-digit number."
	ticket = gets.chomp
end

def winning_numbers
	winners = []

	5.times do
		winners.push(rand(10 ** 4).to_s)
	end

	winners
end

def lotto_func(w,t)
	w.include?"#{t}"
end

def lucky(x)
	if x == true
		a = "Congratulations, you're a winner!"
	else
		a = "Sorry, you lost this time."
	end
end

puts lucky(lotto_func(winning_numbers,what_number))