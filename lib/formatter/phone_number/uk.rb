module Formatter
    module PhoneNumber
        class UK

            def initialise(number)
                @number = number
            end

            def format(number)
                remove_all_spaces(number)
                no_number_input(number)
                valid_format(number)
                valid_characters(number)
                format_number(number)
                number
            end

            private

            def remove_all_spaces(number)
                number = number.gsub!(/\s+/, '')
            end

            def no_number_input(number)
                raise Error::NoNumberInputError.new("You must provide a phone number") unless !number.empty?
            end

            def valid_format(number)
                number_count = number.partition("7").last
                raise Error::InvalidFormatError.new("Invalid phone number") unless number_count.length == 9 && number.start_with?("+447", "447", "07")
            end

            def valid_characters(number)
                raise Error::InvalidCharactersError.new("Only 0-9 and + characters are accepted") unless number =~ /^[+\d]+$/
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
