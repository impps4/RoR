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
        @strikePlayerRuns = 0
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
            @currentPlayers[@strikePlayer] =  @currentPlayers[@strikePlayer].to_i + @curBallRun.to_i
        end
        puts "Below is the score card #{@currentPlayers} \n\n"
    end
end


