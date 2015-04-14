class Person
	@@numPeople = 0

	def Person new()
		Person.numPeople = Person.numPeople + 1
		return
	end
end

class Member < Person
	@@numMembers = 0

	def Member new(String(8) id)
		super()
		Member.numMembers = Member.numMembers + 1
		@currentlyRenting = false
		@currentlyRentingNum  = 0
		@id = id
	end
end

class Vehicle
	@@totalVehicles = 0

	def Vehicle new(Int numWheels)
		@wheels = numWheels
		Vehicle.totalVehicles = Vehicle.totalVehicles + 1
	end

end

class Bike < Vehicle
	@@totalBikes = 0

	def Bike new()
		super(2)
		Bike.totalBikes = Bike.totalBikes + 1
		@start = 0
		@end = 0
		@currentlyRented = false
		@currentlyRentedBy = "default"
	end

	def Void rent(Int time, Member m)
		@start = time
		@currentlyRented = true
		@currentlyRentedBy = m.id
		return
	end

	def Bool giveBack(Int time)
		if time <= @start
			return false
		else
			@end = time
			@currentlyRentedBy = "default"
			return true
		end
	end
end

m = Member.new("aaabbbb")

b = Bike.new()
puts b.wheels

b.rent(1,m)
b.giveBack(2)



