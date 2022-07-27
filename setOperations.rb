#This has been authored by P.L.N Sai Praneeth. This logic contains the concepts of sets,classes, instance variables, loops, dymanic allocation of sets.

require 'set'

class SetOperations
    def definedSets(set1, set2, universalset)
        @set1 = set1
        @set2 = set2
        @universalset = universalset
    end

    def union
        puts "Union of two sets is:\n"
        puts @set1 | @set2 
    end

    def intersection
        puts " intersection of two sets is:\n"
        puts @set1 & @set2
    end

    def complement
        puts "which Complement of given sets would you like to perform?\n\n"
        puts "1. set1 Complement\n2. set2 Complement\n"
        while @complementOption = gets.chomp.to_i
            case @complementOption
                when 1
                    puts @universalset - @set1
                    break
                when 2
                    puts @universalset - @set2
                    break
                else
                    puts "Please select either 1 or 2\n"
            end
        end
        
    end
end



puts "----Enter the elements of set1---\n"
puts "How many elements you would like to enter?\n"
elemsizes1 = gets.chomp.to_i
set1 = Set[]
x = 1
while x <= elemsizes1
  puts "enter the #{x} element"
  elems1 = gets.chomp.to_i
  set1 = set1.add(elems1)
  x = x + 1
  puts "\n" 
end

puts "----Enter the elements of set2---\n"
puts "How many elements you would like to enter?\n"
elemsizes2 = gets.chomp.to_i
set2 = Set[]
y = 1
while y <= elemsizes2
  puts "enter the #{y} element"
  elems2 = gets.chomp.to_i
  set2 = set2.add(elems2)
  y = y + 1
  puts "\n" 
end

universalset = set1 | set2
puts "Do you want to add other elements in universal set? Answer in yes or no\n"
univ = gets.strip
if univ == 'yes'
        puts "----Enter the elements of universal set---\n"
        puts "How many elements you would like to append?\n"
        elemsizes3 = gets.chomp.to_i
        x = 1
        while x <= elemsizes3
            puts "enter the #{x} element"
            uelems = gets.chomp.to_i
            universalset = universalset.add(uelems)
            x = x + 1
            puts "\n" 
        end
else puts "Since you have provided the wrong input or no, taking the universal set as predefined set #{universalset}\n"
end

setObject = SetOperations.new
setObject.definedSets(set1, set2, universalset)
setObject.union
setObject.intersection
setObject.complement
