#This logic has been written by P.L.N Sai Praneeth that contains the concepts of global variable, local variable and class method with parameters and conditions

$maxSurcharge = 0.15
$defaultSurcharge = 0.05
$minimumBill = 50.0
$slab1 = 6.0
$slab2 = 11.0
$slab3 = 15.0
class Electricity
    def self.ebilling(units)
        if units <= 100
            _totalcharge = (units.to_f * $slab1 * $defaultSurcharge).round(1)
            if _totalcharge < $minimumBill
                puts "total bill is: #{$minimumBill} (min)"
            else puts "total bill is: #{_totalcharge}  "
            end
        elsif units > 100 && units <= 300
            _totalcharge = (units.to_f * $slab2 * $defaultSurcharge).round(1)
            if _totalcharge < $minimumBill
                puts "total bill is: #{$minimumBill} (min)"
            else puts "total bill is: #{_totalcharge}"
            end
        elsif units > 300
            _totalcharge = (units.to_f * $slab3 * $maxSurcharge).round(1)
            if _totalcharge < $minimumBill
                puts "total bill is: #{$minimumBill} (min)"
            else puts "total bill is: #{_totalcharge}"
            end
        else puts "please enter the valid units"
        end
    end
end

puts "enter the number of units recorded this month:\n\n"
units = gets.chomp.to_i
Electricity.ebilling(units)