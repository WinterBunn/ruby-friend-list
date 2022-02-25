class Student
    #attr_accessor - this creates the getter and setters
    attr_accessor :first_name, :last_name, :email, :password
    attr_reader :username # this only create the getter

    @first_name
    @last_name
    @email
    @username #= "CarlyBunn" this doesn't work, it should be initialized first
    @password

    def initialize(first_name, last_name, email, password) #this is basically the constructor
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = "CarlyBunn"
        @password = password
    end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}"
    end

    def first_name=(name) # the =() is equivalent to a setter
        @first_name = name
    end

    def first_name
        @first_name #remember that the first element is always returned by default
    end
end

#Carly = Student.new
#Carly.first_name = "Carly"
#puts Carly.first_name
#Carly.last_name = "Rios"
#puts Carly.last_name
#puts Carly.

Charly = Student.new("Charly", "Rios", "charly@test.com", "123456")

puts Charly.to_s