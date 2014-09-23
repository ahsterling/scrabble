class TileBag
  attr_accessor :default_set

  def initialize
    @default_set = generate_default_set
  end

  def generate_default_set


      ["a", "a", "a", "a", "a", "a", "a", "a", "a", "b", "b", "c", "c",
      "d", "d", "d", "d", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e",
      "e", "f", "f", "g", "g", "g", "h", "h", "i", "i", "i", "i", "i", "i", "i",
      "i", "i", "j", "k", "l", "l", "l", "l", "m", "m", "n", "n", "n", "n", "n",
      "n", "o", "o", "o", "o", "o", "o", "o", "o", "p" ]
  end

  def draw_tiles(n)
    
  end

end
