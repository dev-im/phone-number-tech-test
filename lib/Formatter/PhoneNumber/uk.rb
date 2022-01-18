#TODO
#remove any spaces
# check that only numbers and '+' are used in the string
# check that one of the three formats applies to the number 
# return the number with the proper +447 prefixed to the rest of the string
# extract errors into their own classes

module Formatter
    module PhoneNumber
        class UK
            def call(number)
                no_number_input(number)
                number_length(number)
            end

            private

            def no_number_input(number)
                number.length == 0 ? raise("You must provide a phone number") : number
            end

            def number_length(number)
                number.length < 11 || number.length > 13 ? raise("Invalid phone number length") : number
            end
        end
    end
end
