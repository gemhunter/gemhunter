class Person
	def Person new(String(8) name, Int age)
		@name = name
		@age = age
	end
end

class Student <Person
	def Student new(String(8) name, Int age)
		super(name,age)
	end
end

class Group
	def Group new(Student s1, Student s2, Student s3)
		@group = [s1,s2,s3]
	end
end


class TA < Person
	def TA new(String(8) name, Int age)
		super(name,age)
		s1 = Student.new("default",0)
		s2 = Student.new("default",0)
		s3 = Student.new("default",0)
		group1 = Group.new(s1,s2,s3)
		group2 = Group.new(s1,s2,s3)
		group3 = Group.new(s1,s2,s3)

		@assigned = [false,false,false]
		@array = [group1,group2,group3]
	end

	def Bool assignGroup(Group g)
		for i in 1..len(@assigned)
			if @assigned[i]
				@array[i] = g
				return true
			end
		end
		return false
	end
end
