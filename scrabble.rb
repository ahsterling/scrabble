class Scrabble

  def self.score(word)
    score = 0
    word = word.downcase
    word.chars.each { |letter| score += letter_points(letter) }
    return score
  end

  def self.highest_score_from(array_of_words)
    sorted_by_score = array_of_words.sort_by { |word| score(word) }
    max_score = score(sorted_by_score[-1])
    top_words = sorted_by_score.select { |word| score(word) == max_score }

    if top_words.count == 1
      best_word = top_words[0]
    elsif check_seven_letter(top_words) != nil
      best_word = check_seven_letter(top_words)
    else
      best_word = check_shortest_word(top_words)
    end
    return best_word
  end


  def self.check_seven_letter(array_of_words)
    sorted_by_length = array_of_words.sort_by { |word| word.length }
    seven_letter_words = sorted_by_length.select { |word| word.length == 7 }
    return seven_letter_words[0]
  end

  def self.check_shortest_word(array_of_words)
    sorted_by_length = array_of_words.sort_by { |word| word.length }
    shortest_word = sorted_by_length[0]
    return shortest_word
  end

  def self.letter_points(letter)
    score = 0

    letter_hash = {["a","e", "i", "o", "u", "l", "n", "r", "s", "t"] => 1,
    ["d", "g"] => 2,
    ["b", "c", "m", "p"] => 3,
    ["f", "h", "v", "w", "y"] => 4,
    ["k"] => 5,
    ["j", "x"] => 8,
    ["q", "z"] => 10}

    letter_hash.each {|key, value|
      if key.include? letter
        score = value
      end}

    return score
  end

end
