def what_number
	p "Please enter a number between 1000 and 9999."
	ticket = gets.chomp
end

def split_ticket_into_array(ticketnum)
	split_ticket = ticketnum.split('')
end

def winning_numbers
	winners = []

	5.times do
		winners.push("#{rand(9999).to_s.center(4, rand(9).to_s)}")
	end

	winners
end

winningtickets = winning_numbers

def lotto_func(w,t)
	p w
	lottonum = 0
	matches = 0
	match_array = []

	5.times do

		digit = 0

		match = 0

		while digit <4

			digitmatch = w[lottonum].include?"#{t[digit]}"
			#p "#{digitmatch}!!"

			if digitmatch == true
				match += 1
			end

			digit += 1
		end

		lottonum += 1
		#p match
		match_array.push(match == 3)

	end
	#p match_array
	answer = match_array.any?
end

def lucky(x)
	if x == true
		a = "Congratulations, you're a winner!"
	else
		a = "Sorry, you lost this time."
	end
end

puts "#{lucky(lotto_func(winningtickets,split_ticket_into_array(what_number)))}"

#puts "#{lotto_func(winningtickets,split_ticket_into_array(what_number))}"