require 'humanize'

module ReadWriteOperations

    def fileExistence
        if File.exists?("data.txt")
            $flag = 1
        end
    end

    def readAndConvertContent
        convertedFile = File.open("convertedFile.txt", "w+")
        feed = "data.txt"
        File.readlines(feed).each do |eachLine|
            convertedFile.puts eachLine.to_i.humanize
        end
        convertedFile.close
    end
end 