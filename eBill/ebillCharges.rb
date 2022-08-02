class Echarges
    def charges
        charges = Hash["maxSurcharge" => 0.15,
        "defaultSurcharge" => 0.05,
        "minimumBill" => 50.0,
        "slab1" => 6.0,
        "slab2" => 11.0,
        "slab3" => 15.0,
        "prevReading" => 750]
    end
end