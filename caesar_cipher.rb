#!/usr/bin/env ruby
def caesar_cipher(message, factor)
  cipher_message = []
  low_case_chars = (97..122)
  
  message.downcase.chars.map do |chr|
    if low_case_chars.include?(chr.ord)
      new_char = chr.ord + factor

      while !low_case_chars.include?(new_char)
        if low_case_chars.include?(chr.ord)
          exceed = new_char - 122
          new_char = 96 + exceed
        end
      end
      
      cipher_message << new_char.chr
    else
      cipher_message << chr
    end
  end
  cipher_message.join
end

puts caesar_cipher(ARGV[0], ARGV[1].to_i)