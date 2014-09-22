require './scrabble.rb'

describe "Scrabble" do

  describe "#class methods here" do

    it "responds to #score" do
      expect(Scrabble).to respond_to :score
    end

    it "calculates letter points" do
      expect(Scrabble.letter_points("z")).to eq 10
    end

    it "gives correct score" do
      expect(Scrabble.score("cat")).to eq 5
    end

    it "gives correct score when word is capitalized" do
      expect(Scrabble.score("CAT")).to eq 5
    end

    it "responds to #highest_score_from" do
      expect(Scrabble).to respond_to :highest_score_from
    end

    it "returns word with highest score" do
      expect(Scrabble.highest_score_from(["cat", "queen"])).to eq "queen"
    end



    # it "returns 7 letter word when there is a word score tie" do
    #   expect(Scrabble.highest_score_from(["cat", "queen"])).to eq ""
    # end

    it "returns shorter word when there is a word score tie" do
      expect(Scrabble.highest_score_from(["star", "dot"])).to eq "dot"
    end



  end


end
