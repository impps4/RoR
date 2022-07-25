#This logic is to view, add, remove the contents of dictionary authored by P.L.N Sai Praneeth
class Dictionary
    @@contents = Hash.new
    @@contents = { "A" => "Apple",  "C" => "Cat", "B" => "Ball" }
    def self.dictionaryContents
        @@contents.sort
    end

    def addAlphabet(alpha,word)
        @@contents[alpha] = word
        puts @@contents
        puts
    end

    def searchAlphabet(alpha)
        if @@contents.key?(alpha)==true
            word=@@contents[alpha]
            puts " word of alphabet provided is #{word}"
        else
            puts "No entry for this alphabet in the dictionary"
        end
    end

    def updateAlphabet(alpha,word)
        if @@contents.key?(alpha)==true
            @@contents[alpha] = word
            puts " word of alphabet provided is #{word}"
            puts @@contents
        else
            puts "No provided Alphabet found in the dictionary"
        end
    end

    def deleteAlphabet(alpha)
        if @@contents.key?(alpha)==true
           @@contents.delete(alpha)
           puts @@contents
        else
            puts "No provided Alphabet found in the dictionary"
        end
    end

end

puts "Choose from the Dictionary list"
puts "1. View the content of dictionary"
puts "2. Search for an Alphabet"
puts "3. Add an Alphabet "
puts "4. Update an Alphabet"
puts "5. Delete an Alphabet"

obj=Dictionary.new
action = gets.chomp.to_i
case action
    when 1
        puts Dictionary.dictionaryContents
    when 2
        puts "Enter the  Alphabet to be searched from the dictionary"
        alpha=gets.strip
        obj.searchAlphabet(alpha)
    when 3
        puts "Enter the  Alphabet to be added to the dictionary"
        alpha=gets.strip
        puts "Enter the word of the alphabet"
        word=gets.strip
        obj.addAlphabet(alpha,word)
    when 4
        puts "Enter the  Alphabet to be Updated from the dictionary"
        alpha=gets.strip
        puts "Enter the new word for the alphabet"
        word=gets.strip
        obj.updateAlphabet(alpha,word)
    when 5
        puts "Enter the  Alphabet to be Deleted from the dictionary"
        alpha=gets.strip
        obj.deleteAlphabet(alpha)
    else  
        puts "Called off! Choose from the provided options only"
end