#This logic has been written by P.L.N Sai Praneeth that contains the concepts of global variable, local variable and class method with parameters and conditions

require_relative "ebillCharges.rb"
class Electricity < Echarges

    def initialize(units)
        @units = units
    end

    def ebilling
        if @units > 100 
            @TotalCharge = (100.0 * charges["slab1"] * charges["defaultSurcharge"]).round(1)
            @remUnits = @units - 100
            if @remUnits >200
                @TotalCharge = @TotalCharge.to_f + (200  * charges["slab2"] * charges["defaultSurcharge"]).round(1)
                @remUnits = @remUnits - 200
                puts "total bill is: #{@TotalCharge.to_f + (@remUnits.to_f * charges["slab3"] * charges["maxSurcharge"]).round(1)}"
            else puts "total bill is: #{@TotalCharge.to_f + (@remUnits.to_f * charges["slab2"] * charges["defaultSurcharge"]).round(1)}"
            end
        else @totalcharge = (@units.to_f * charges["slab1"] * charges["defaultSurcharge"]).round(1)
            if @totalcharge > 50.0
                puts "total bill is: #{@totalcharge.to_f}"
            else puts "total bill is: #{charges["minimumBill"]} (min)"
            end
        end
    end

end

puts "your previous reading is 750 units. so please add the current reading value more than 750 units\n\n"
curReading = gets.chomp.to_i
if curReading > 750
    units = curReading - 750
    elecObj = Electricity.new(units)
    elecObj.ebilling
else
    puts "you have entered the current reading less than 750 units"
end
