
def always_three (first_number)
	 (((first_number + 5) *2 -4) / 2 - first_number)

end

puts "Give me a number."

user_number = gets.to_i

puts "Always " + always_three(user_number).to_s