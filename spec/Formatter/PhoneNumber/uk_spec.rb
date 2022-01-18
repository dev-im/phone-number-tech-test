require 'formatter/phonenumber/uk'

RSpec.describe Formatter::PhoneNumber::UK, "#format" do
    context "with a valid format" do
        it "accepts the phone number" do
            number = "+447356432176"
            expect(subject.call(number)).to eq("+447356432176")
        end
    end

    context "with an invalid format" do
        it "removes any spaces within the string" do
            number = "07362 153796 "
            expect(subject.call(number)).to eq("07362153796")
        end

        it "raises an error when the string input is empty" do
            number = ""
            expect{subject.call(number)}.to raise_error(RuntimeError, "You must provide a phone number")
        end

        it "raises an error when the string is less than 11 or more than 13 characters" do
            number = "0739288347583032"
            expect{subject.call(number)}.to raise_error(RuntimeError, "Invalid phone number length")
        end
    end
end
