class Scrabble

  def self.score(word)
    score = 0
    word = word.downcase
    word_array = word.chars
    word_array.each { |l| score += letter_points(l) }
    return score
  end

  def self.highest_score_from(array_of_words)
    best_word = ""
    sorted_by_score = array_of_words.sort_by { |word| score(word) }
    max_score = score(sorted_by_score[-1])
    top_words = sorted_by_score.select { |word| score(word) == max_score}
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
    seven_letter_words = sorted_by_length.map { |word| word.length == 7}
    return seven_letter_words[0]

  end




  def self.check_shorter_word(array_of_words)
    sorted_by_length = array_of_words.sort_by { |word| word.length }
    shortest_word = sorted_by_length[0]
    return shortest_word

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
    else
      score = 0
    end

    return score
  end



end
