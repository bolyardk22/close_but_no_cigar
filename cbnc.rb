def what_number
	p "Please enter a number greater than zero."
	ticket = gets.chomp
end

lotteryticket = what_number

def length_of_ticket(b)
	lengthvar = b.length
end

lengthoflottery = length_of_ticket(lotteryticket)

def split_ticket_into_array(ticketnum)
	split_ticket = ticketnum.split('')
end

def winning_numbers(c)
	winners = []

	5.times do
		winners.push("#{rand(10 ** c).to_s.rjust(c, '0')}")
	end

	winners
end

winningtickets = winning_numbers(lengthoflottery)

def lotto_func(w,t,d)
	p w
	lottonum = 0
	matches = 0
	match_array = []

	5.times do

		digit = 0

		match = 0

		while digit <d

			digitmatch = w[lottonum].include?"#{t[digit]}"


			if digitmatch == true
				match += 1
			end

			digit += 1
		end

		lottonum += 1

		match_array.push(match == d - 1)

	end

	answer = match_array.any?
end

def lucky(x)
	if x == true
		a = "Congratulations, you're a winner!"
	else
		a = "Sorry, you lost this time."
	end
end

puts "#{lucky(lotto_func(winningtickets,split_ticket_into_array(lotteryticket),lengthoflottery))}"