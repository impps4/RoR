class GameRulesDefinations
    def initialize
        @ballsPerOver = 6
        @totalOversPerInningsODI = 3
        @totalOversPerInningsT20 = 1.3
    end
    def systemGenerator
        @systemNumberLot = Array.new(1,2,3,4,6)
    end
end