# Booku

    Program description:
    This program retrieves a small selection of ten books from the google books 
    API. It presents the books in a list (on the bookshelf) to the user with an 
    index and requests that the user choose a book by typing a number 1-10 followed 
    by ENTER to see more details about one of the books on the shelf. If the user 
    makes a selection outside of that 1-10 range, the program informs the user that
    the user has made an invalid selection. The program provides the user with a 
    option to exit the program or choose a book from the shelf. Once presented with
    the bookshelf and the user chooses a number 1-10, the program presents the book
    with a few more details about that particular publication (not always the original)
    of the book selected. Below the details of the book selected, the program again
    offers the user to exit the program or choose another book. In this portion of 
    the program, if the user selects a number between 4-10, the user will be informed
    that they have discovered the secret passageway behind the bookshelf! The user
    will be told not to tell anyone and to go back to looking at books. This message
    is followed by the invalid selection message and provides the user with the option
    to exit or select a book from the bookshelf. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'booku'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install booku

    # installation guide
    #	clone 
    #	something
    #	bundle install
    #	gems that need to be installed separately
    #		security gems separately

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing
# Contributor guide
#	Code

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/booku.

## License 

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
