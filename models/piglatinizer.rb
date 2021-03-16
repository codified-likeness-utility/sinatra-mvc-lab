require 'pry'
class PigLatinizer
    
    @@all = []
    
    def initialize
        self.class.all << self
    end

    def piglatinize(string)
        split_string = string.split(" ")
        individual_words = split_string.map {|word| piglatinize_word(word)}
        individual_words.join(" ")
    end
    
    def piglatinize_word(word)
        first_character = word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(first_character)
            "#{word}way"
        else 
            partitioned_for_vowels = word.partition(/[aeiou]/)
            "#{partitioned_for_vowels[1]}#{partitioned_for_vowels[2]}#{partitioned_for_vowels[0]}ay"
        end
    end

    def self.all
        @@all
    end

end
