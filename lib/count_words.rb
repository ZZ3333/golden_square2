# A method called count_words that takes a string as an argument and returns the number of words in that string.

def count_words(string) # "one two three"
    words_array = string.split(" ") # ["one", "two", "three"]
    return words_array.length # 3
end
