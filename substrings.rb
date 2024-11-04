#!/usr/bin/env ruby
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(search, dictionary)
  word_hash = {}
  phrase_words = search.split(" ").map(&:downcase)
  phrase_words.each do |phrase_word|
    dictionary.each do |word|
      found = phrase_word.include?(word)
      if found
        word_hash[word].nil? ? word_hash[word] = 1 : word_hash[word] += 1
      end
    end
  end
  
  word_hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)