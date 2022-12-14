require 'make_snipet'
RSpec.describe "make_snipet_method" do

    it "if your input is 5 words, it would return 5 words" do
        result = make_snipet("one two three four five")
        expect(result).to eq "one two three four five"
        end

it "if its more than 5 words, it returns the five words ..." do
    result = make_snipet("one two three four five six")
    expect(result).to eq "one two three four five..."
end
end 