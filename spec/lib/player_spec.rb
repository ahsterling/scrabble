require './lib/player.rb'
require './lib/scrabble.rb'

describe "Player" do
  let(:player) { Player.new("Allie") }

  it "creates an instance of player class" do
    expect(player.class).to eq Player
  end

  it "returns player name" do
    expect(player.name).to eq "Allie"
  end

  it "returns player's total score" do
    expect(player.total_score).to eq 0
  end

  it "when player has won" do
    expect(player.won?).to eq false
  end

  it "#plays returns array of words played by Player" do
    expect(player.plays.class).to eq Array
  end

  it "adds a word to the plays array with #play(word)" do
    player.play("apple")
    player.play("cheese")
    expect(player.plays[1]).to eq "cheese"
  end

  it "updates total score when word is added to plays" do
    player.play("ocean")
    expect(player.total_score).to eq 7
  end

  it "returns false when player adds a new word if they have won" do
    player.play("zzzzzzz")
    player.play("zzz")
    expect(player.play("word")).to eq false
  end

  it "#highest_scoring_word" do
    player.plays = ["cat", "zzzzzzz", "apple", "qqqqqqq"]
    expect(player.highest_scoring_word).to eq "zzzzzzz"
  end

  it "#highest_word_score" do
    player.plays = ["cat", "zzzzzzz", "apple", "qqqqqqq"]
    expect(player.highest_word_score).to eq 70
  end

  it "returns highest_word_score when there is a tie" do
    player.plays = ["aaa", "rrr", "ttt"]
    expect(player.highest_word_score).to eq 3 
  end



end
