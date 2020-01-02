#Get My Number Game
#Written by: Peter Nguyen!

puts "Welcome to 'Get My Number!'"
print "What's your name? "
name= gets.chomp
puts "Welcome, #{name}!\n\n"

# Store a random number for the player to guess.
# Track how many guesses the player has made.
target= rand(100) + 1
remainingGuesses= 10
isGuessed= false

until remainingGuesses == 0 || isGuessed
	puts "I've got a random number between 1 and 100."
	puts "Can you guess it?"

	puts "You've got #{remainingGuesses} guesses left."
	print "Make a guess: "
	guess= gets.to_i
	remainingGuesses-= 1

	if guess == target
		puts "Congratulation! Your guess is correct. You made it in #{10 - remainingGuesses} guesses"
		isGuessed= true
	elsif guess < target
		puts "Your number is LOWER than target"
	else guess > target
		puts "Your number is HIGHER than target"
	end

	print "\n"
end