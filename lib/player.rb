require './lib/scrabble.rb'

class Player
  attr_accessor :name, :total_score, :plays

  def initialize(name)
    @name = name
    @total_score = 0
    @plays = []
  end

  def won?
    total_score == 100
  end

  def play(word)
    if won?
      false
    else
      @plays << word
    end
  end

  def highest_scoring_word
    @sorted_plays = @plays.sort_by do |word|
      Scrabble.score(word)
    end
    @sorted_plays[-1]
  end

end
