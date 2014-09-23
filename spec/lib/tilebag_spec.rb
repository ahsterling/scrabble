require './lib/player.rb'
require './lib/scrabble.rb'
require './lib/tilebag.rb'

describe "TileBag" do
  let(:tilebag) {TileBag.new}

  it "creates a new instance of TileBag class" do
    expect(tilebag.class).to eq TileBag
  end

  it "contains a collection of tiles" do
    expect(tilebag.bag.class).to eq Array
  end

  it "#draw_tiles(n)" do
    expect(tilebag.draw_tiles(5))
  end
end
