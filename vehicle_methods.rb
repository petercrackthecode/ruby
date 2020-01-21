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

class Vehicle
	attr_accessor :odometer, :gas_used

	def accelerate
		puts "Floor it!"
	end

	def sound_horn
		puts "Beep! Beep!"
	end

	def steer
		puts "Turn front 2 wheels."
	end

	def mileage
		return @odometer / @gas_used
	end
end

class Car < Vehicle

end

class Truck < Vehicle
	attr_accessor :cargo

	def load_bed(contents)
		puts "Securing #{contents} in the truck bed."
		@cargo= contents
	end
end

class Motorcycle < Vehicle
	def steer
		puts "Turn front wheel."
	end
end

car= Car.new
car.odometer= 22914
car.gas_used= 728
car.steer

motorcycle= Motorcycle.new
motorcycle.odometer= 2214
motorcycle.gas_used= 14
motorcycle.steer
motorcycle.accelerate
