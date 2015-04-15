class Person
    def Person new(String(9) name)
        @name = name
    end
    def Void id()
        puts @name
    end
end

class Doctor < Person
    @@doc_count = 0
    def Doctor new(String(9) name)
        Doctor.doc_count = Doctor.doc_count + 1
        @patient = Person.new("ndefined")
        super(name)
    end
    def Void set_patient(Person newp)
        @patient = newp
    end
    def Void rem_patient()
        @patient = Person.new("ndefined")
    end
end

class Time
    def Time new(Int date, Int month, Int time)
        @date = date
        @month = month
        @time = time
    end
end

class Appointment
    @@appoint_id = 0
    def Appointment new(Doctor d, Person p)
        Appointment.appoint_id = Appointment.appoint_id + 1
        @doctor = d
        @doctor.set_patient(p)
        @appoint_time = Time.new(0,0,0)
    end
    def Void set_time(Time time)
        @appoint_time = time
    end
    def Void print_appointment()
        puts "The doctor alloted for the appointment is"
        @doctor.id()
        puts "The patient name in the appointment is"
        @doctor.patient.id()
    end
end

doc1 = Doctor.new("abcdefgh")
jack = Person.new("JackBaur")
time = Time.new(16,4,15)
new_app = Appointment.new(doc1,jack)
new_app.set_time(time)
new_app.print_appointment()
puts Doctor.doc_count
puts new_app.doctor.patient.name

doc2 = Doctor.new("12345678")
doc3 = Doctor.new("a1b2c3d4")

puts doc3.doc_count
puts doc2.doc_count

staff = [doc1,doc2,doc3]

puts "Patient of first doctor is"
puts staff[0].patient.name
puts "Patient of third doctor is"
staff[2].patient.id()
