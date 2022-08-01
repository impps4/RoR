class Integercheck

    def myInt(input)
      if input.empty?
        0
      else
        output = input.to_i
        output+1
      end
    end
  end

  describe Integercheck do

    describe ".myInt" do
    intObj = Integercheck.new
        context "given integer is '5'" do
        it "has to return 5" do
            expect(intObj.myInt('')).to eql(0)
        end
      end
  
      context "given integer is '10'" do
        it "has to return 10" do
          expect(intObj.myInt("10")).to eql(11)
        end
      end
    end
  end