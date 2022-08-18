require_relative "playersBuild.rb"


class Gameplay < PlayersLot
    def gamePlay
        loop do
            if ((@overCount.round(1)) < @totOvers)
                if @FreeHitBall == 'Yes'
                    puts "For a free hit ball we are taking the random generated number\n\n"
                    @curBallRun = @freeHitBallRand.sample
                    puts "System has generated #{@curBallRun}\n\n"
                    @FreeHitBall = 'No'
                elsif @FreeHitBall == 'No'
                    puts "enter the runs in [1,2,3,4,6]\n\n"
                    @curBallRun = gets.chomp.to_i
                    puts "system generated number is #{@systemRuns}\n\n"
                    if (@curBallRun == @systemRuns)
                        puts "Your batsman is out since system generated number is #{@systemRuns}\n\n"
                        
                        @ballCount+=1
                        ballsAndOversCount
                        @outBatmanCount+=1
                        if @outBatmanCount < @maxWickets
                            nextBatsman
                            puts "New batsman entered the field is #{@strikePlayer}\n\n"
                            matchSummary
                        elsif @outBatmanCount == @maxWickets
                            matchSummary
                            puts "All Your batsmen are out!\n\n"
                            matchSummary
                            break
                        end

                    elsif (@systemRuns != "No Ball!")
                        if @curBallRun == 1 || @curBallRun == 3
                            playerRuns(@curBallRun)
                            @ballCount+=1
                            ballsAndOversCount
                            if (@ballCount % 6)!=0
                                playersSwap
                            end
                            matchSummary
                        elsif @curBallRun % 2 == 0
                            playerRuns(@curBallRun)
                            @ballCount+=1
                            ballsAndOversCount
                            matchSummary
                        end        
                    elsif (@systemRuns == "No Ball!")
                        if (@curBallRun == 1 || @curBallRun == 3)
                            puts "No ball condition entered for 1,3"
                            playerRuns(@curBallRun)
                            ballsAndOversCount
                            if (@ballCount % 6)!=0
                                playersSwap
                            end
                            @FreeHitBall = 'Yes'
                            matchSummary
                        elsif (@curBallRun % 2 == 0)
                            puts "No ball condition entered for 2,4,6"
                            playerRuns(@curBallRun)
                            ballsAndOversCount
                            @FreeHitBall = 'Yes'
                            matchSummary
                        end
                    end
                end
            elsif (@overCount.round(1) >= @totOvers) || (@outBatmanCount == @maxWickets)
                puts "Your Innings have been Completed!"
                matchSummary
                break
            elsif (@outBatmanCount < @maxWickets) && (@Runs > @systemBattingScore)
                puts "Your have won the Match!"
                matchSummary
                break
            elsif (@systemBattingScore != 0) && ((((@overCount.round(1))  < @totOvers) || (@overCount.round(1) >= @totOvers))  && (@outBatmanCount == @maxWickets) && (@Runs == @systemBattingScore) )  || ((@overCount.round(1) >= @totOvers) && ((@outBatmanCount == @maxWickets) || (@outBatmanCount < @maxWickets)) && (@Runs == @systemBattingScore))
                puts "Match Tied!"
                matchSummary
                break
            else 
                puts "You have lost the match"
                break
            end
        end

    end
end


