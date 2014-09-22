require './scrabble.rb'

describe "Scrabble" do

  describe "#class methods here" do

    it "responds to #score" do
      expect(Scrabble).to respond_to :score
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


  end

  describe "#instance methods here" do

    it "calculates letter points" do
      expect(Scrabble.letter_points("z")).to eq 10
    end

  end


end
