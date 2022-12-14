require 'password_checker'
RSpec.describe PasswordChecker do
    it "checks if the password is 8 or more characters" do
        password_checker = PasswordChecker.new
        result = password_checker.check("unitedstates")
        expect(result).to eq true

    end

    it "if the password is less than 8 characters" do
        password_checker = PasswordChecker.new
        expect {password_checker.check("united")}.to raise_error "Invalid password, must be 8+ characters."
    end
    end