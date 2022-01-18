require 'formatter/phonenumber/uk'

RSpec.describe Formatter::PhoneNumber::UK, "#format" do
    context "with a valid format" do
        it "accepts the phone number" do
            number = '+447356432176'
            expect(subject.call(number)).to eq('+447356432176')
        end
    end

    context "with an invalid format" do
        it "raises an error when the string input is empty" do
            number = ""
            expect{subject.call(number)}.to raise_error(RuntimeError, "You must provide a phone number")
        end
    end
end