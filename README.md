# Butternut Box Backend Tech Task

## **Source code**

We've prepared a Github repository to provide you with a starting point for your Butternut Box engineering task. From [this repo](https://github.com/ButternutBox/interview_tasks), you can clone [this directory](https://github.com/ButternutBox/interview_tasks/tree/main/phone_number_task) to start your build. We've set up this repo so that it can be used as a monolith for both front end and back end work but **you only need to do the back end part (i.e. Phone Number task)**. 

## Context

We collect a customer's phone number on checkout so we can send them SMS messages to remind them that their order is coming, and other useful information about their delivery. We use Twilio to send the actual messages, and Twilio require the phone number to be formatted correctly before being sent to Twilio, including the +44 prefix. 

On checkout, customers are able to input their phone number in any of the following formats:

+447...

447...

07....

UK mobile phone numbers are **11 digits long** when in the 07... format (There are some exceptions, but you can ignore them), and always have a 7 after the prefix (whether it's +44, 44 or 0). What we're looking for you to do is the following:

1. Using Test Driven Development, Build a spec for a Formatter::PhoneNumber::UK#format method that takes in a phone number, removes any spaces, checks it is valid (raises an error if not), and outputs it in the +447... format. 
2. Implement the Formatter::PhoneNumber::UK#format method to ensure the tests pass.
3. Implement error classes for the different errors that can occur during the formatting

For example, if I call format with 071234 56789 as the input, it should return +447123456789. If I call it with 0634343, it should raise an error.

A sample piece of code to get you started is as follows:

```ruby
module Formatter
  module PhoneNumber
    module UK
      def self.format(number)
	...
      end
    end
  end
end
```

You can use Minitest or RSpec for the testing. Please do not create a full Rails application to implement this: Just use Ruby to complete this task. You cannot use any libraries to aid the implementation or testing of this class outside of RSpec.

And then execute:

    $ bundle install

## Next Steps
