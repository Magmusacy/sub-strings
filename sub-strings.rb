=begin
create method substrings that takes two arguements, word (string) and an array (dictionary) respectively 
check if each element of array is included in the string case insensitive
return a hash with keys as a string that occur in the array and values saying how many times they occur
=end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word,array)
    
    occurences = Hash.new(0)
    
    word = word.downcase.split(" ")

    word.each do |word|

        array.each do |element|
            
            if word.include? element
                occurences[element] += 1
            end

        end

    end

    occurences

end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)