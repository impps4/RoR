#This is a simple ASCii art logic using simple method with parameters and if condition authored by P.L.N Sai Praneeth

class ASCii
    def initialize(row_count,character,character_count,width)
        @row_count = row_count
        @character = character
        @character_count = character_count
        @width = width
        @character1 = '|'
    end

    def tree
        
        @row_count.times do
        puts (@character * @character_count).center(@width)
        @character_count += 2
        end
    end

    

end

puts "Enter the Charater with which you want to make an art"
character = gets.chomp

puts "How many rows of #{character}'s do you want?"
row_count = gets.chomp.to_i

character_count = 1
width = 75
puts "What ASCii art do you want me to print?\n
        1. ASCii Pyramid\n
        2. ASCii Tree\n"
art = gets.chomp.to_i
ASCiiObj = ASCii.new(row_count,character,character_count,width)
if art == 1
    ASCiiObj.tree
elsif art == 2
    ASCiiObj.tree
    @row_count.times do
        puts @character1.center(@width)
    end
else
    puts "We can print only Pyramid and a tree. Please choose the option either 1 or 2" 
end
