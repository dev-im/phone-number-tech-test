#TODO
# no number is input
# check length of the number (11-13 is acceptable)
# check that only numbers and '+' are used in the string
# check that one of the three formats applies to the number 
# return the number with the proper +447 prefixed to the rest of the string

module Formatter
    module PhoneNumber
        class UK
            def call(number)
                number
            end
        end
    end
end
