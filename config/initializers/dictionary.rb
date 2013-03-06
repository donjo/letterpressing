require 'set'

#WORDS = File.read("#{Rails.root}/app/assets/extras/dictionary").lines.reject{|line| line.start_with?(";;;")}.map{|line| line.split().first}.to_set
WORDS = File.read("#{Rails.root}/app/assets/extras/wordsEn").lines.map{|word| word.strip.upcase}.to_set
