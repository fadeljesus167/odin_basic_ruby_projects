#!/usr/bin/env ruby
def bubble_sort(collection)
  swaps = 0
  limit = collection.length - 2

  while !swaps.eql?(-1)
    for index in (0..limit) do
      if collection[index] > collection[index + 1]
        later = collection[index]
        previous = collection[index + 1]

        collection[index + 1] = later
        collection[index] = previous

        swaps += 1
      end
    end
    
    if swaps.eql?(0)
      swaps = -1
    else
      swaps = 0
    end
  end

  collection
end

puts bubble_sort(ARGV[0].split(" ").map(&:to_i)).inspect