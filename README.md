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

Install it yourself by:
 
    1. Clone or download from github by using the download ZIP or SSH: git@github.com:Ocelots-etc/booku.git
    2. From the booku program directory (directory including Gemfile) type 'bundle install' into your terminal or run setup from bin directory
    3. From the booku program directory type ./bin/book_finder
     

## Usage

Follow CLI prompts to select a book from the bookshelf for more details about the book. The secret passageway
behind the bookshelf can be discovered by pressing 4-10 after selecting the detail view of any book.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/book_finder` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Ocelots-etc/booku.

## License 

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
