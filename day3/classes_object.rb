# Day 3  -  Classes and objects
#   Why what and How OOPs
#   Classes
#   class methods and instance methods
#   Access specifiers
#   Getters and setters

# Assignment - 
# Try out different examples on above topics by their own on ruby 





class Student     
    @@student_count =0    #class variable
    
    attr_accessor :name, :age, :roll_no       #getter and setter for name age roll_no
    
    def initialize(name, age, rollno)        #constructor 
        @name = name
        @age = age
        @roll_no = rollno
        @@student_count += 1
    end

    def display_student_details     #instance_method
        puts "name of student is : #{@name} age is : #{@age} and roll_no is: #{@roll_no}"
    end

    def self.total_student        #class_method
        return @@student_count
    end

    private         # using private access specifier to create a method
    def student_name
        puts "name of student is #{@name}"
    end


    def get_student_names   #to access the private method
        student_name
    end



end

students = []     #array of students


while  true
    puts "-select the option-"
    puts "1->register a student"
    puts "2->display the student detail registered"
    puts "3->display all the student detail"
    puts "4->total number of student"
    puts "5->student name"
    puts "6->exit"
    
    option = gets.chomp.to_i
    
    case option
   
    when 1
        puts "name of the student :"
        name = gets.chomp
        
        puts "age of the student :"
        age = gets.chomp

        puts "rollno of the student :"
        rollno = gets.chomp

        student = Student.new(name, age, rollno)      #initializing the object
        students << student

        puts "student is registered"
    

    when 2
        if students.empty?
            puts "No students registered yet."
        else
            puts "Last registered student details:"
            students.last.display_student_details
        end
    
    when 3
        if students.empty?
            puts "No students to display."
        else
            puts "All student details:"
            students.each { |stud| stud.display_student_details }
        end    
    
    when 4
        total_number=Student.total_student
        puts "total  umber of student is  #{total_number}"
    
    when 5
        student.get_student_names
    
    when 6
        puts "exit"
        break
    
    else
        puts "invalid option"
    end

end







