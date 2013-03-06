module WordFinder
  MAX_ATTEMPTS = 1_000_000
  MAX_WORDS = 100

  def self.find_words(s)
    chars = s.chars.to_a
    words = Set.new
    attempts = 0
    max_letters = [25, s.length].min

    max_letters.downto(3).each do |i|
      chars.combination(i).each do |ary|
        candidate = ary.join
        words << candidate if WORDS.include?(candidate.upcase)
        attempts += 1

        if attempts > MAX_ATTEMPTS
          puts "Too many attemps. Breaking"
          return words
        end

        if words.size > MAX_WORDS
          puts "have enough words. Breaking"
          return words
        end
      end
    end

    words
  end
end
