require './lib/player.rb'

describe "Player" do
  let(:player) { Player.new("Allie") }

  it "responds to new method" do
    expect(Player).to respond_to :new
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

  it "returns array of words played by Player" do
    expect(player.plays.count).to eq 0
  end

  it "adds a word to the plays array with #play(word)" do
    expect(player.play("apple")[0]).to eq "apple"
  end

  it "returns false when player adds a new word if they have won" do
    player.total_score = 100
    expect(player.play("word")).to eq false
  end

  it "#highest_scoring_word" do
    player.plays = ["cat", "zzzzzzz", "apple"]
    expect(player.highest_scoring_word).to eq "zzzzzzz"
  end

  

end
