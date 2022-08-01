require_relative 'dateOperations.rb'

class Date_conversion
    def initialize(dateString)#3rd Feb 2022 10:15:10
        @dateString = dateString
    end
    include DateOperations
    puts @utcDate
    puts "hi"
    #left for the scope of other functionalities after conversion
end

puts "Enter the date that you want to convert in the format date month year Hours minute second \n Example 1st Jan 2022 09:15:00"
dateString = gets
dateObject = Date_conversion.new(dateString)
dateObject.utcConversion