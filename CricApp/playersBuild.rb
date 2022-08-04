class PlayersLot
    def players
        @playersList = {}
        @teamA = ["player1","player2","player3","player4","player5","player6","player7","player8","player9","player10","player11"]

        @teamA.each do |name|
            puts "Please provide the name of #{name} of your Team "
            @playersList[name] = gets.chomp
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
        puts "Your Striker is #{@strikePlayer} and Non-Striker is #{@nonStrikePlayer}\n"
        
    end

    def selectCaptain
        puts "Below is the list of your Team. Select the captain of your team.\n\n"
        p @playersList
        loop do
            puts "enter the captain only from the Players Lot:\n\n"
            captain = gets.chomp
           
            if @playersList.has_value?(captain)
                @captainPlayer = captain
               break
            end
        end
        puts "Your Captain is #{@captainPlayer}\n\n"
    end
end

playerObj = PlayersLot.new
playerObj.players
playerObj.selectOpeningPlayers
playerObj.selectCaptain