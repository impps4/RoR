require_relative "playersBuild.rb"
require_relative "gameRules.rb"

class Gameplay < PlayersLot
    def gamePlay
        loop do
            if @notFreeHitBall == 'Yes'
                puts "For a free hit ball we are taking the random generated number\n\n"
                @curBallRun = @freeHitBallRand.sample
                puts "System has generated #{@curBallRun}\n\n"
            else
                puts "enter the runs in [1,2,3,4,6]\n\n"
                @curBallRun = gets.chomp.to_i
                        
                @systemRuns = @systemBowlingNumberLot.sample
                puts "system generated number is #{@systemRuns}\n\n"
                if (@overCount.round(1) <= @totalOversPerInningsODI) && (@outBatmanCount <= 10)
                    if (@curBallRun == @systemRuns)
                        puts "Your batsman is out since system generated number is #{@systemRuns}\n\n"
                        
                        @ballCount+=1
                        ballsAndOversCount
                        @outBatmanCount+=1
                        nextBatsman
                        puts "New batsman entered the field is #{@strikePlayer}\n\n"
                    elsif @curBallRun == 1 || @curBallRun == 3
                        
                        @ballCount+=1
                        ballsAndOversCount
                        if (@ballCount % 6)!=0
                            playersSwap
                        end
                        playerRuns(@curBallRun)
                    elsif @curBallRun % 2 == 0
                        
                        @ballCount+=1
                        ballsAndOversCount
                        playerRuns(@curBallRun)
                        
                    elsif (@systemRuns == "No Ball!") && (@curBallRun == 1 || @curBallRun == 3)
                        
                        ballsAndOversCount
                        if (@ballCount % 6)!=0
                            playersSwap
                        end
                        playerRuns(@curBallRun)
                        @notFreeHitBall = 'Yes'
                    elsif (@systemRuns == "No Ball!") && (@curBallRun % 2 == 0)
                        ballsAndOversCount
                        playerRuns(@curBallRun)
                        @notFreeHitBall = 'Yes'
                    end
                elsif @overCount.round(1) > @totalOversPerInningsODI
                    puts "Your Innings have been ompleted!"
                    break
                end
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
