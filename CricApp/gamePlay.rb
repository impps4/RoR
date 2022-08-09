require_relative "playersBuild.rb"
require_relative "gameRules.rb"

class Gameplay < PlayersLot
    def gamePlay
        loop do
            puts "enter the runs in [1,2,3,4,6]\n\n"
            @curBallRun = gets.chomp.to_i
                    
            @systemRuns = @systemBowlingNumberLot.sample
            puts "system generated number is #{@systemRuns}\n\n"
            if (@overCount <= @totalOversPerInningsODI && @outBatmanCount <= 10)
                if @systemRuns == "Out!" || (@curBallRun == @systemRuns)
                    puts "Your batsman is out since system generated number is #{@systemRuns}\n\n"
                    @ballCount+=1
                    ballsAndOversCount
                    @outBatmanCount+=1
                    nextBatsman
                    puts "New batsman entered the field is #{@strikePlayer}\n\n"
                elsif @curBallRun == 1 || @curBallRun == 3
                    playerRuns(@curBallRun)
                    playersSwap
                    @ballCount+=1
                    ballsAndOversCount
                elsif @curBallRun ==  2 || @curBallRun == 4 || @curBallRun == 6
                    playerRuns(@curBallRun)
                    @ballCount+=1
                    ballsAndOversCount
                    end
            elsif @overCount > @totalOversPerInningsODI
                puts "Your Innings have been ompleted!"
                break
            end
        end
    end
end
playerObj = Gameplay.new
playerObj.players
playerObj.selectCaptain
playerObj.selectOpeningPlayers
playerObj.playerRunsInitialization
playerObj.systemGenerator
playerObj.gamePlay
