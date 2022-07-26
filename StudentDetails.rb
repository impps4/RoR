#This logic has been written by P.L.N Sai Praneeth which includes inheritance, class method, local variable concepts and initiated(made mandatory) the logic using the inherited class

class Student
    def self.setStudDetails(mathsMarks,physicsMarks,chemistryMarks,rollNum,studName)
        puts "Below are the provided details of the student\n\n"
        puts "Entered student name is #{studName}\n\n"
        puts "Entered roll number is #{rollNum}\n\n"
        puts "Entered student name marks of maths,physics and chemistry respectively are #{mathsMarks},#{physicsMarks},#{chemistryMarks}\n\n"
        calculateTotal(mathsMarks,physicsMarks,chemistryMarks,rollNum,studName)
    end

    def self.calculateTotal(mathsMarks,physicsMarks,chemistryMarks,rollNum,studName)
        _totalMarks = mathsMarks + physicsMarks + chemistryMarks
        puts "Total marks of the Student #{studName} bearing Roll number #{rollNum} are #{_totalMarks}.\n\n"
        percentage(_totalMarks) 
    end
end

class StudentDemo < Student
#This is a dummy class where it inherits the Student class.
     def self.percentage(_totalMarks) 
        puts "Below is the percentage of the student:\n\n"
        puts _totalMarks.to_f/75.0 * 100.0
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
StudentDemo.setStudDetails(mathsMarks,physicsMarks,chemistryMarks,rollNum,studName) #calling the class method that has been inherited

