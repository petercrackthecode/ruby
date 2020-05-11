class Foo
	def ==(x)
		puts "checking for EQUALITY with #{x}, returning false"
		false
	end
end

f = Foo.new
x = (f == 42) # => "checking for EQUALITY with 42, returning false"
puts x # => "false"
x = (f != 42) # => "checking for EQUALITY with 42, returning false"
puts x # => "true"

class Foo
	def !=(x)
		puts "Checking for INequality with #{x}"
	end
end

f != 42 # => "checking for INequality with 42"