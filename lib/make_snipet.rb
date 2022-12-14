def make_snipet(words)
words_array = words.split(" ")
words_count = words_array.length
if words_count > 5
    first_five_words = words_array[0,5].join(" ")
    return first_five_words + "..."
else
    return words
end
end