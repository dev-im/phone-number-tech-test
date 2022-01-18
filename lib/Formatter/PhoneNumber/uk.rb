#TODO
# check that only numbers and '+' are used in the string
# check that one of the three formats applies to the number 
# return the number with the proper +447 prefixed to the rest of the string
# extract errors into their own classes

module Formatter
    module PhoneNumber
        class UK
            def call(number)
                remove_all_spaces(number)
                no_number_input(number)
                number_length(number)
                valid_characters(number)
                number
            end

            private

            def remove_all_spaces(number)
                number = number.gsub!(/\s+/, '')
            end

            def no_number_input(number)
                number.length == 0 ? raise("You must provide a phone number") : number
            end

            def number_length(number)
                number.length < 11 || number.length > 13 ? raise("Invalid phone number length") : number
            end

            def valid_characters(number)
                number_split = number.split(//)
                accepted_characters = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "+"]
                number_split.each do |character| 
                    accepted_characters.include?(character) == false ? raise("Only 0-9 and + characters are accepted") : number
                end
            end
        end
    end
end
