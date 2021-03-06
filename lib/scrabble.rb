class Scrabble

  def self.score(word)
    wrong_input?(word)
    word_score = 0
    word.downcase.chars.each { |letter| word_score += letter_points(letter) }
    word_score
  end

  def self.wrong_input?(word)
    raise ArgumentError, "wrong type of input" if word.downcase[/[^a-zA-Z]+/]
  end

  def self.highest_score_from(array_of_words)
    sorted_by_score = array_of_words.sort_by { |word| score(word) }
    max_score = score(sorted_by_score[-1])
    top_words = sorted_by_score.select { |word| score(word) == max_score }
    check_exceptions(top_words)
  end

  def self.check_seven_letter(array_of_words)
    sorted_by_length = array_of_words.sort_by { |word| word.length }
    sorted_by_length.select { |word| word.length == 7 }[0]
  end

  def self.check_exceptions(top_words_array)
    if top_words_array.count == 1
      best_word = top_words_array[0]
    elsif check_seven_letter(top_words_array) != nil
      best_word = check_seven_letter(top_words_array)
    else
      best_word = check_shortest_word(top_words_array)
    end
  end

  def self.check_shortest_word(array_of_words)
    array_of_words.sort_by { |word| word.length }[0]
  end

  def self.letter_points(letter)
    letter_score = 0

    letter_hash = {["a","e", "i", "o", "u", "l", "n", "r", "s", "t"] => 1,
    ["d", "g"] => 2,
    ["b", "c", "m", "p"] => 3,
    ["f", "h", "v", "w", "y"] => 4,
    ["k"] => 5,
    ["j", "x"] => 8,
    ["q", "z"] => 10}

    letter_hash.each {|key, value|
      if key.include? letter
        letter_score = value
      end}
    raise ArgumentError, "not a letter" if letter_score == 0
    letter_score

  end

end
