require './lib/scrabble.rb'

class Player
  attr_accessor :name, :total_score, :plays

  def initialize(name)
    @name = name
    @total_score = 0
    @plays = []
  end

  def won?
    total_score >= 100
  end

  def total_score
    all_scores = @plays.collect { |word| Scrabble.score(word) }
    all_scores.inject(0) { |sum, i| sum + i }
  end

  def play(word)
    if !won?
      @plays << word
    else
      false
    end
  end

  def highest_scoring_word
    Scrabble.highest_score_from(@plays)
  end

  def highest_word_score
    Scrabble.score(highest_scoring_word)
  end

end
