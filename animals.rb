class Animal
	attr_reader :name, :age

	def name=(newName)
		if newName == ""
			raise "Name can't be blank!"
		else
			@name= newName
		end
	end

	def age=(newAge)
		if newAge <= 0
			raise "Age is invalid"
		else
			@age= newAge
		end
	end

	def move destination
		puts "#{@name} is running to the #{destination}"
	end

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

	def to_s
		"#{@name}, #{@age} #{@age > 1 ? 'years' : 'year'} old"
	end
end

class Dog < Animal
	def talk
		puts "#{@name} says Bark!"
	end

	def to_s
		"#{@name} the dog, #{@age} #{@age > 1 ? 'years' : 'year'} old"
	end
end

class Bird < Animal
	def talk
		puts "#{@name} says Chirp! Chirp!"
	end

	def to_s
		"#{@name} the bird, #{@age} #{@age > 1 ? 'years' : 'year'} old"
	end
end

class Cat < Animal
	def talk
		puts "#{@name} says Meow!"
	end

	def to_s
		"#{@name} the cat, #{@age} #{@age > 1 ? 'years' : 'year'} old"
	end
end

class Armadillo < Animal
	def move(destination, step)
		if step < 1 
			raise "Error: Step must be greater than or equal to 1"
		end
		puts "#{@name} unrolls!"
		puts "#{step} #{step > 1 ? "steps" : 'step'}"
		super(destination)
		# "super" works as well
	end

	def to_s
		"#{@name} the armadillo, #{@age} #{@age > 1 ? 'years' : 'year'} old"
	end
end

lucy= Armadillo.new
lucy.name= "Lucy"
lucy.age= 4

lucy.move("Church", 4)