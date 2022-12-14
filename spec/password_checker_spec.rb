require 'password_checker'
RSpec.describe PasswordChecker do
    it "check if the password is 8 or more characters" do
        password_checker = PasswordChecker.new
        password_checker.check >=(8)
        expect(password_checker.check).to eq 8

    end
    end