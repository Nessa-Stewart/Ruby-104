
class Pets
	def set_name=(name)
		@name = name
		end
	def get_name
		return @name
	end

	def set_owner=(ower_name)
		@owner_name= owner_name
	end

	def get_owner
		return @owner_name
	end
end


class Cat < Pets
	def meow
		return "Meeeooowww"
	end
end

class Dog < Pets
	def bark
		return "Arf"
	end
end

class Fish < Pets
	def bubble
		return "Glug"
	end
end




my_cat = Cat.new
my_cat.set_name = "Jarvis"
catname = my_cat.get_name

my_dog = Dog.new
my_dog.set_name = "Koumori"
dogname = my_dog.get_name

my_fish = Fish.new
my_fish.set_name = "Blinky"
fishname = my_fish.get_name

puts "#{catname} says #{my_cat.meow}, #{dogname} says #{my_dog.bark} and #{fishname} says #{my_fish.bubble}!"

puts my_cat.inspect
puts my_dog.inspect
puts my_fish.inspect
