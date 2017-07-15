#allows the user to input a ticket number
#results in a number
def what_number
	p "Please enter a number greater than zero."
	ticket = gets.chomp
end

#variable for the ticket the user enters
lotteryticket = what_number

#finds the number of digits entered
#results in a number
def length_of_ticket(b)
	#b is the ticket the user enters (lotteryticket)

	lengthvar = b.length
end

#variable that is the number of digits for the ticket chosen by the user
lengthoflottery = length_of_ticket(lotteryticket)

#splits the number entered into individual digits
#results in an array
def split_ticket_into_array(ticketnum)
	#ticketnum is the ticket the user enters

	split_ticket = ticketnum.split('')
end

#creates an array with 5 winning numbers, same number of digits as the ticket entered
#results in an array with 5 things
def winning_numbers(c)
	#c is the number of digits of the ticket entered
	
	winners = []

	5.times do
		#creates a random number with c digits and pushes that to array
		winners.push("#{rand(10 ** c).to_s.rjust(c, '0')}")
	end

	#end up with five strings of winning numbers of c digits in an array
	winners
end

#variable for the winning ticket array
winningtickets = winning_numbers(lengthoflottery)

#compares the ticket entered with the winning ticket array
#results in either true/false
def lotto_func(w,t,d)
	#w is the winning ticket array
	#t is the array containing digits of the ticket entered by the user
	#d is the number of digits in the ticket

	#prints the winning numbers
	p w

	#lottonum is the index position in the winning ticket array
	lottonum = 0

	#match_array is the array which holds true/false values for each position in the winning number array
	match_array = []

	#makes sure each winning number gets evaluated
	5.times do

		#digit is the index position of the ticket chosen array
		digit = 0

		#match holds the number of matches between each digit of the ticket and the winning number
		#gets reset to zero with each loop
		match = 0

		#goes through all the digits in the ticket that have been split into an array
		while digit <d

			#compares a winning number to a digit of the ticket number
			digitmatch = w[lottonum].include?"#{t[digit]}"

			#if a digit is found in the winning number, bumps match counter up by one
			if digitmatch == true
				match += 1
			end

			#iterates through the digits of the chosen ticket array
			digit += 1
		end

		#changes the index position of the winning number array
		lottonum += 1

		#determines if all but one digit of the ticket matches the winning number - which is how this lottery is won
		match_array.push(match == d - 1)

	end

	#determines if there are any true values in the match_array
	#if there are, returns true
	#if there are no true values, returns false
	answer = match_array.any?
end

#determines whether the lottery has been won
#results in a string
def lucky(x)
	#x is a true/false value

	if x == true
		a = "Congratulations, you're a winner!"
	else
		a = "Sorry, you lost this time."
	end
end

#this mess passes all the functions and variables through one another to make the lottery happen
puts "#{lucky(lotto_func(winningtickets,split_ticket_into_array(lotteryticket),lengthoflottery))}"