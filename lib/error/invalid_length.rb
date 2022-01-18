module Error
    class InvalidLengthError < StandardError
        def self.message
            raise "Invalid phone number length"
        end
    end
end