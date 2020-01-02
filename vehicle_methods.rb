=begin
def accelerate
	puts "Stepping on the gas"
	puts "Speeding up"
end

def sound_horn
	puts "Pressing the horn button"
	puts "Beep beep!"
end

def use_headlights(brightness= 'low-beam')
	puts "Turning on #{brightness} headlights"
	puts "Watch out for deer!"
end
=end

def talk(animal_type, name)
	if animal_type == 'bird'
		puts "#{name} says Chirp! Chirp!"
	elsif animal_type == "dog"
		puts "#{name} says Bark!"
	elsif animal_type == "cat"
		puts "#{name} says Meow!"
	end # The animal type parameter is used to select which string is printed.
end

def move(animal_type, name, destination)
	if animal_type == "bird"
		puts "#{name} flies to the #{destination}."
	elsif animal_type == "dog"
		puts "#{name} runs to the #{destination}."
	elsif animal_type == "cat"
		puts "#{name} runs to the #{destination}."
end

=begin
	This method is the same for all animal types, so there's no animal type parameter.
=end
def report_age(name, age)
	puts "#{name} is #{age} years old."
end

move("bird", "Whistler", "tree")
talk("dog", "Sadie")
talk("bird", "Whisler")
move("cat", "Smudge", "house")
report_age("Smudge", 6)