puts "Are you good? Please answer Y/N:"
answer = gets.chomp.downcase

while (answer.downcase == "y")
	puts "I love you"
end

if (answer.downcase =="n")
	puts "I still love you"
end
