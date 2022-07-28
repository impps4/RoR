require_relative 'conversionCore.rb'
$flag = 0

class IntegerToWords

    include ReadWriteOperations
    #left as a Scope to other oprations after file handling
end

conversionObject = IntegerToWords.new
conversionObject.fileExistence

if $flag == 0
    puts "file data.txt does not exist. Please create a file and add the content!"
else conversionObject.readAndConvertContent
    puts "Successfully converted the integers to words!"
end

