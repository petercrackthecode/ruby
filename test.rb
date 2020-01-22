=begin
def my_method
	yield 1
	yield 2
	yield 3
end

my_method	{ |param| puts param }
=end

class Array
	def each
		index= 0
		while index < self.length # Remember, "self" refers to the current object- in this case, the current array
			yield self[index].to_s + " next to a toilet" # The key difference: we yield the current element to a block!
			index+= 1 # Then, move to the next element, just like before.
		end
	end
end

["Singing", "Dancing", "Eating a pizza"].each{|param| puts param}