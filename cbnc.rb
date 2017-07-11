def what_number
	p "Please enter a number between 1000 and 9999."
	ticket = gets.chomp
end

def winning_numbers
	winners = []

	5.times do
		winners.push("#{rand(9999).to_s.center(4, rand(9).to_s)}; ")
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

puts "#{lucky(lotto_func(winning_numbers,what_number))} Winning numbers: #{winning_numbers.join}"