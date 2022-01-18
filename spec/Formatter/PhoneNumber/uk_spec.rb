require 'formatter/phonenumber/uk'

RSpec.describe Formatter::PhoneNumber::UK, "#format" do
    context "with a valid format" do
        it "accepts the phone number" do
            number = '+447356432176'
            expect(subject.call(number)).to eq('+447356432176')
        end
    end
end