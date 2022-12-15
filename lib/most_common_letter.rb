
# the method takes text and shoud return the most common letter

def get_most_common_letter(text)
    counter = Hash.new(0)
   # counter => {} 
   

   # text.chars => returns *ALL* chars in the given string
   # text.chars => returns letters, symbols and whitespaces
    text.chars.each do |char|
        if char =~ /[a-zA-Z]/ # a-z or A-Z => looking for letters
            then counter[char] += 1
        end
    end
   counter 
    # counter => returns a hash of the chars and counts 
    # hash structure = key => vaalue key(char) value(count) 

    # {"t"=>3, "h"=>3, "e"=>4, " "=>8, "r"=>4, "o"=>7, "f"=>4, ","=>2, "i"=>2, "s"=>1, "n"=>1, "!"=>1}

    # [["s", 1], ["n", 1], ["i", 2], ["t", 3], ["h", 3], ["f", 4], ["r", 4], ["e", 4], ["o", 7]]
    #                                                                -3  0    -2  0    -1   0 
    p counter.to_a.sort_by { |key, value| value }[-1][0]
    # counter.to_a.sort_by { | o|  o }[0][0] 
    #p counter.to_a.sort_by { |k, v| v }[0][0] # implicit return 
end
  
  # Intended output:



 get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"

  # 