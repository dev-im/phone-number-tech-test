#TODO
# check length of the number (11-13 is acceptable)
# check that only numbers and '+' are used in the string
# check that one of the three formats applies to the number 
# return the number with the proper +447 prefixed to the rest of the string
# extract errors into their own classes

module Formatter
    module PhoneNumber
        class UK
            def call(number)
                no_number_input(number)
            end

            private

            def no_number_input(number)
                number.length == 0 ? raise("You must provide a phone number") : number
            end
        end
    end
end
