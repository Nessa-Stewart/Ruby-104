class Cat
	attr_accessor :name, :owner_name, 

	def meow
		return "Meeeooowww"
	end
end

my_cat = Cat.new
my_cat.name = "Jarvis"
catname = my_cat.name
puts "#{catname} says #{my_cat.meow}!"
