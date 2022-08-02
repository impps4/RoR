#This logic has been written by P.L.N Sai Praneeth which includes inheritance, class method, local variable concepts and initiated(made mandatory) the logic using the inherited class

class Student
    def initialize(mathsMarks,physicsMarks,chemistryMarks,rollNum,studName)
        @mathsMarks = mathsMarks
        @physicsMarks = physicsMarks
        @chemistryMarks = chemistryMarks
        @rollNum = rollNum
        @studName = studName
    end
    def setStudDetails
        puts "Below are the provided details of the student\n\n"
        puts "Entered student name is #{@studName}\n\n"
        puts "Entered roll number is #{@rollNum}\n\n"
        puts "Entered student name marks of maths,physics and chemistry respectively are #{@mathsMarks},#{@physicsMarks},#{@chemistryMarks}\n\n"
        
    end

    def calculateTotal
        @totalMarks = @mathsMarks + @physicsMarks + @chemistryMarks
        puts "Total marks of the Student #{@studName} bearing Roll number #{@rollNum} are #{@totalMarks}.\n\n"
    end
end

class StudentDemo < Student
#This is a dummy class where it inherits the Student class.
     def percentage
        puts "Below is the percentage of the student:\n\n"
        puts @totalMarks.to_f/75.0 * 100.0
    end
end

puts "enter the details of the student below:\n\n"
puts "enter the Roll Number of the Student."
rollNum = gets.strip
puts "enter the Student name."
studName = gets.strip
puts "enter the M1 marks of the Student out of 25."
mathsMarks = gets.chomp.to_i
puts "enter the Phy marks of the Studentout of 25."
physicsMarks = gets.chomp.to_i
puts "enter the Chem marks of the Studentout of 25."
chemistryMarks = gets.chomp.to_i

StudentDemoObj = StudentDemo.new(mathsMarks,physicsMarks,chemistryMarks,rollNum,studName)
StudentDemoObj.setStudDetails #calling the class method that has been inherited
StudentDemoObj.calculateTotal
StudentDemoObj.percentage

