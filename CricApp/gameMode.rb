require_relative "gamePlay.rb"

class GameMode < Gameplay
    def gameSession
        if @batOrBowl == 1 || @sysInningsDecider == "Bowl"
            gamePlay
            puts "system has Scored #{@systemBattingScore}\n\n"
        elsif @batOrBowl == 2 || @sysInningsDecider == "Bat"
            puts "Your Target is #{@systemBattingScore+1}\n\n"
            gamePlay
        end
    end
end


playerObj = GameMode.new
playerObj.players
playerObj.selectCaptain
playerObj.selectOpeningPlayers
playerObj.playerRunsInitialization
playerObj.systemGenerator
playerObj.matchType
playerObj.matchToss
playerObj.inningsDecider
playerObj.gameSession
