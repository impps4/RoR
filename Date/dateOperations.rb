require 'date'
require 'time'

module DateOperations
    def utcConversion
        @utcDate = Time.parse(@dateString).utc
        puts @utcDate
    end

end 