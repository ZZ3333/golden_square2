require 'count_words'

RSpec.describe "count_words method" do
    it "counts the number of words, returns that number" do
        result = count_words("one two three")
        expect(result).to eq 3
    end

    it "counts string with 4 words, return 4" do
        result = count_words("one two three four")
        expect(result).to eq 4
    end
end