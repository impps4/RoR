require_relative "playersBuild.rb"
require_relative "gameRules.rb"

class Gameplay < PlayersLot
    def gamePlay
        loop do
            puts "enter the runs in [1,2,3,4,6]\n\n"
            @curBallRun = gets.chomp.to_i
            
            @systemRuns = @systemBowlingNumberLot.sample
            puts "system generated number is #{@systemRuns}\n\n"
            if @systemRuns == "Out!" || (@curBallRun == @systemRuns)
                puts "Your batsman is out since system generated number is also #{@systemRuns}\n\n"
               break
            elsif @curBallRun == 1 || @curBallRun == 3
                playerRuns(@curBallRun)
                playersSwap
            elsif @curBallRun ==  2 || @curBallRun == 4 || @curBallRun == 6
                playerRuns(@curBallRun)
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
