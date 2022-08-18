require_relative "../../gameMode.rb"

RSpec.describe GameMode do
    gpObj = GameMode.new
    context "overCount has to be less than predefined overs per ODI/T20I" do
        it "has to return Your Innings have been Completed!" do
            gpObj.typeDefinations
          expect(gpObj.gamePlay).to eql("Your Innings have been Completed!")   
        end
    end
  
end