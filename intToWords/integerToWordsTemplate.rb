require_relative 'conversionCore.rb'
$flag = 0

class IntegerToWords

    extend ReadWriteOperations
    puts "Please check the convertedFile.txt"
    #left as a Scope to other oprations after file handling
end

#conversionObject = IntegerToWords.new
IntegerToWords.fileExistence

if $flag == 0
    puts "file data.txt does not exist. Please create a file and add the content!"
else IntegerToWords.readAndConvertContent
    puts "Successfully converted the integers to words!"
end

