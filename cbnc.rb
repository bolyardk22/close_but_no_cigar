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