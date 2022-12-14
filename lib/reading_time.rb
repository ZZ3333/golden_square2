def reading_time(text) # text = "one two three"
    words = text.split(" ")  # words = ["one", "two", "three"]

    return (words.length / 200.to_f).ceil
end