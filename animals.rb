class Dog
	attr_reader :name, :age 
=begin 
	We only define the reader methods automatically, since we're defining writer
	methods ourselves.
=end
	def name=(value)
		if value == "" # If "value" is invalid, execution will halt there
			raise "Name can't be blank!"
		end
		@name= value # This statement won't be reached if "raise" is called
	end

	def age=(value)
		if value < 0 # If "value" is invalid, execution will halt here.
			raise "An age of #{value} isn't valid!"
		else
			@age= value	# This statement won't be reached if "raise" is called.
		end
	end


=begin
	so there's only one attr_writer and attr_reader within a class.
	":name" and ":age" are all symbols.
=end

	def report_age
		if @name == nil
			if @age == nil
				puts "Can't report age because both the name and value are unset."
			else
				puts "Can't report age because the name is unset."
			end
		elsif @age == nil
			puts "Can't report age because the age is unset."
		else
			puts "#{@name} is #{@age} #{@age > 1 ? 'years' : 'year'} old"
		end
	end

	def talk
		puts "#{@name} says Bark!"
	end

	def move(destination)
		puts "#{@name} is running to the #{destination}."
	end
end

class Bird 
	attr_accessor :name, :age

	def report_age
		puts "#{@name} is #{@age} years old."
	end

	def talk
		puts "#{@name} says Chirp! Chirp!"
	end
	def move(destination)
		puts "#{@name} is flying to the #{destination}."
	end
end

class Cat
	attr_accessor :name, :age

	def report_age
		puts "#{@name} is #{@age} years old."
	end

	def talk
		puts "#{@name} says Meow!"
	end
	def move(destination)
		puts "#{@name} is running to the #{destination}."
	end
end

fido= Dog.new
fido.name= "Harry"
fido.age= -12
rex= Dog.new
rex.name= "Rex"
rex.age= 3

fido.report_age
rex.report_age