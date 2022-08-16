module GameRulesDefinations
    def typeDefinations
        @ballsPerOver = 6.0
        @ballCount = 0
        @overCount = 0
        @maxWickets = 10
        @totalOversPerInningsODI = 5.0
        @totalOversPerInningsT20 = 3.0
    end
    def systemGenerator
        @systemBowlingNumberLot = Array[1,2,3,4,6,"No Ball!"]
        @systemBattingNumberLot = Array[1,2,3,4,6]
        @systemBattingScore = rand(20...40)
        @freeHitBallRand = Array[1,2,3,4,6]
    end

    def toss
        @toss = Array["Heads","Tails"]
        @systemToss = @toss.sample
    end
end