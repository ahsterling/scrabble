class Scrabble

  def self.score(word)
    score = 0
    word = word.downcase
    word_array = word.chars
    word_array.each { |l| score += letter_points(l) }
    return score
  end

  def self.highest_score_from(array_of_words)

  end

  def self.letter_points(letter)
    score = 0
    letter_hash = {1 => ["a","e", "i", "o", "u", "l", "n", "r", "s", "t"],
                  2 => ["d", "g"],
                  3 => ["b", "c", "m", "p"],
                  4 => ["f", "h", "v", "w", "y"],
                  5 => ["k"],
                  8 => ["j", "x"],
                  10 => ["q", "z"]}


    if letter_hash[1].include? letter
      score = 1
    elsif letter_hash[2].include? letter
      score = 2
    elsif letter_hash[3].include? letter
      score = 3
    elsif letter_hash[4].include? letter
      score = 4
    elsif letter_hash[5].include? letter
      score = 5
    elsif letter_hash[8].include? letter
      score = 8
    elsif letter_hash[10].include? letter
      score = 10
    end

    return score
  end



end
