#!/usr/bin/env ruby

def caesar(string, count)
	words = string.split(" ")
	words.each { |word|
		word.each_char { |char| 
			if ("a".."z").include?(char) || ("A".."Z").include?(char) 
				count.times{
					if char == "z"
						char = "a"
					elsif char == "Z"
						char = "A"
					else
						char = char.next
					end
				} 
			end
			print char 
		}
		print " "
	}
end

caesar("What a string!", 5)