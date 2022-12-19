require "check_grammar"
RSpec.describe "check_grammar method" do

context "given an empty string" do
    it "fails" do

        expect {check_grammar("")}.to raise_error "Not a sentance."
end
end


context "given a sentance with a full stop" do
it "returns true" do
    result = check_grammar("Hello, I am Kay.")
    expect(result).to eq true
end
    end



    context "given a sentance without a capital letter" do
    it "returns false" do
        result = check_grammar("hello, I am Kay.")
        expect(result).to eq false
        end
        end
        context "given a sentance with neither a full stop nor a capital" do
            it "returns false" do
                result = check_grammar("hello, I am Kay")
                expect(result).to eq false
                
                end
                end

    end