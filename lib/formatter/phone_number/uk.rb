#TODO
# extract errors into their own classes

module Formatter
    module PhoneNumber
        class UK
            def call(number)
                remove_all_spaces(number)
                no_number_input(number)
                number_length(number)
                valid_characters(number)
                valid_format(number)
                format_number(number)
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
                   if accepted_characters.include?(character) == false
                    raise("Only 0-9 and + characters are accepted")
                   else
                    number
                   end
                end
            end

            def valid_format(number)
                if number.start_with?("+447", "447", "07") == false
                    raise("Number must begin with +447, 447 or 07")
                else 
                    number
                end
            end

            def format_number(number)
                return if number.start_with?("+447")
                if number.start_with?("447")
                    number.delete_prefix!("44")
                else number.start_with?("07")
                    number.delete_prefix!("0")
                end
                number.prepend("+44")
            end
        end
    end
end
