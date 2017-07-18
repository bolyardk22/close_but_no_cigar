def match? (a,b)
	a_array = a.split('')
	b_array = b.split('')

	index = 0
	longer_array = a_array.count >= b_array.count
	match_count = 0

	if longer_array == true
		a_array.count do
			equals = a[index].eql? b[index]

			if equals == true
				match_count += 1
			end

			index += 1
		end

	else
		b_array.count do
			equals = b[index].eql? a[index]

			if equals == true
				match_count += 1
			end

			index += 1
		end
	end

	match_count
end