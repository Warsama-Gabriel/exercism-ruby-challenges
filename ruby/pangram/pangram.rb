module BookKeeping
  VERSION = 4
end

class Pangram
   def self.pangram?(phrase)
    words = phrase.downcase
    letters = "a".."z"
    letters.all? {|letter| words.count(letter) > 0 }
  end
end
