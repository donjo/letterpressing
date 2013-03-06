class ShaunFinder
  def self.find(dictionary, letter_set)
    matches = []
    letter_set.upcase!

    dictionary.to_a.each do |word|
      remaining_letters = letter_set.dup
      guilty = false

      unless word.blank?
        for letter in word.chars.to_a
          if remaining_letters.include?(letter)
            remaining_letters.sub!(letter, '')
          else
            guilty = true
            break
          end
        end

        matches.push(word) unless guilty
      end
    end

    matches.sort! {|x, y| y.length <=> x.length}
    return matches
  end
end
