module GameRulesDefinations
    def typeDefinations
        @ballsPerOver = 6.0
        @ballCount = 0
        @overCount = 0
        @totalOversPerInningsODI = 1.0
        @totalOversPerInningsT20 = 1.3
    end
    def systemGenerator
        @systemBowlingNumberLot = Array[1,2,3,4,6,"Out!"]
        @systemBattingNumberLot = Array[1,2,3,4,6]
    end

    def toss
        @toss = Array["Heads","Tails"]
        @systemToss = @toss.sample
    end
end