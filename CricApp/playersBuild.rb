require_relative "gameRules.rb"


class PlayersLot

    include GameRulesDefinations
    def initialize
        typeDefinations
        systemGenerator
        toss
    end
    
    def players
        @playersScoreCard = {}
        @nonAvailableBatsman = Array.new
        @outBatmanCount = 0
        @strikerBallsFaced = 0
        @nonStrikerBallsFaced = 0
        @matchStats = Array.new
        @strikePlayerRuns = 0
        @notFreeHitBall = ''
        @nonStrikePlayerRuns = 0
        @playersScore = {}
        @playersList = {}
        puts "Provide the Name of your Team.\n\n"
        @teamName = gets.chomp
        for i in 1..11 do
     
            puts "Please provide the name of the player#{i} of your Team #{@teamName} "
                      @playersList[i] = gets.chomp
        end
    end

    def selectOpeningPlayers
        puts "Below is the list of your Team. Select any two to open the innings.\n\n"
        p @playersList
        loop do
            puts "enter the Striker only from the Players Lot\n\n"
            striker = gets.chomp
           
            if @playersList.has_value?(striker)
                @strikePlayer = striker
               break
            end
        end
        loop do
            puts "enter the Non-Striker only from the Players Lot\n\n"
            nonStriker = gets.chomp
           
            if @playersList.has_value?(nonStriker)
                @nonStrikePlayer = nonStriker
               break
            end
        end
        puts "Your Striker is #{@strikePlayer} and Non-Striker is #{@nonStrikePlayer}\n\n"
        @nonAvailableBatsman.append(@strikePlayer)
        @nonAvailableBatsman.append(@nonStrikePlayer)
        
    end

    def selectCaptain
        puts "Below is the list of your Team. Select the captain of your team.\n\n"
        p @playersList
        loop do
            puts "\nenter the captain only from the Players Lot:\n\n"
            captain = gets.chomp
           
            if @playersList.has_value?(captain)
                @captainPlayer = captain
               break
            end
        end
        puts "Your Captain is #{@captainPlayer}\n\n"
    end

    def playersSwap
        @tempPlayer = @strikePlayer
        @strikePlayer = @nonStrikePlayer
        @nonStrikePlayer = @tempPlayer
        puts "Now the Striker is #{@strikePlayer} and the Non-Striker is #{@nonStrikePlayer} \n\n"
    end

    def playerRunsInitialization
        @currentPlayers = {@strikePlayer =>0,@nonStrikePlayer=>0}
    end

    def playerRuns(curBallRun)
        @curBallRun = curBallRun
        if @strikePlayer && @playersList.has_value?(@strikePlayer)
            @currentPlayers[@strikePlayer] =  @currentPlayers[@strikePlayer] + @curBallRun
        end
        puts "Below is the score card #{@currentPlayers} \n\n"
    end

    def nextBatsman
        loop do   
            puts "enter the next batsman only from the Players Lot and who have not batted before \n\n"
            @upcomingBatsman = gets.chomp
            if ((@playersList.has_value?(@upcomingBatsman)) && !(@nonAvailableBatsman.include? @upcomingBatsman) && (@outBatmanCount<10))
                @strikePlayer = @upcomingBatsman
               break
            end
        end  
    end

    def ballsAndOversCount
        if (@ballCount % 6)==0
            @overCount = @overCount = @ballCount.to_f/6.0
        elsif (@ballCount % 6)!=0
            @overCount = (@ballCount/6).to_f + ((@ballCount%6)/10.0)
        end
        puts "Overs Completed are #{@overCount}"
        
    end

    def matchSummary
        time = Time.new
        @timeStamp = (time.strftime("%d%m%Y")).to_s
        @fileName = @timeStamp.concat(@teamName)
        #File.open("#{@fileName}.txt", "w+")
        fileobject = File.new("#{@fileName}.txt", "w+")
        fileobject.puts("Match summary - #{@teamName} ")
        fileobject.puts("Player Runs")
        @totalRuns = 0
        @currentPlayers.each do |playr, scr|
            
            fileobject.puts("#{playr.to_s}        #{scr.to_i}")
            @totalRuns = @totalRuns + scr.to_i
            
        end
        fileobject.puts("1st Innings #{@totalRuns}/#{@outBatmanCount}(#{(@overCount).round(1)})")
        fileobject.close
    end
end


