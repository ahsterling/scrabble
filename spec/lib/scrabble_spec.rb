require './lib/scrabble.rb'

describe "Scrabble" do
  describe "#class methods here" do

    context "#letter_points" do
      it "calculates letter points" do
        expect(Scrabble.letter_points("z")).to eq 10
      end

      it "calculates letter points as 0 when input is invalid" do
        expect(Scrabble.letter_points(" ")).to eq 0
        expect(Scrabble.letter_points("4")).to eq 0
        expect(Scrabble.letter_points("!")).to eq 0
        expect(Scrabble.letter_points("")).to eq 0
      end

    end

    context "#score" do

      it "gives correct score" do
        expect(Scrabble.score("cat")).to eq 5
      end

      it "gives correct score when word is capitalized" do
        expect(Scrabble.score("Cat")).to eq 5
      end

      it "gives score of 0 when input is invalid" do
        expect(Scrabble.score("4739")).to eq 0
        expect(Scrabble.score("48c9sajfsd")).to eq 0
        expect(Scrabble.score("%1a ")).to eq 0

      end

    end

    context "#highest_score_from" do

      it "returns word with highest score from array of two" do
        expect(Scrabble.highest_score_from(["cat", "queen"])).to eq "queen"
      end

      it "returns 7 letter word when there is a word score tie" do
        expect(Scrabble.highest_score_from(["yokel", "ability", "zit"])).to eq "ability"
      end

      it "returns shorter word when there is a word score tie" do
        expect(Scrabble.highest_score_from(["star", "dot"])).to eq "dot"
      end

      it "returns first word in list when scores and lengths match" do
        expect(Scrabble.highest_score_from(["aaaaa", "eeeee", "iiiii"])).to eq "aaaaa"
      end
    end





  end


end
