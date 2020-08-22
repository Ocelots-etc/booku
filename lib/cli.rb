class CLI
# this CLI (Command Line Interface) class contains the user input/output methods
# TODO: give the user the option of searching for categories within fiction

require_relative './repeat_repeat.rb' # require_relative
extend RepeatRepeat

  def self.list_books # this class method iterates through the book instances held in the @@all array in the books.rb file
    puts "~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~".colorize(:color => :black, :background => :light_white)  # line for spacing aesthetics
    puts "                                  Welcome to my bookshelf!                                     ".colorize(:color => :yellow, :background => :light_cyan).bold  # Welcomes the user to the bookshelf they are viewing
    puts "~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~".colorize(:color => :black, :background => :light_white)  # line for spacing aesthetics
    Books.all.each_with_index do |book, n| # and outputs an indexed list of my bookshelf book titles
      puts "#{n + 1}. #{book.title}"
    end
      self.choose_a_book # calls the chose_a_book class method from the CLI class
  end
    
    # this class method requests the user input a number to select a book title in order to
  def self.choose_a_book # see more details about the books on the bookshelf
    puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".colorize(:color => :green)  #, :background => :green) # line for spacing aesthetics
    puts "About which book would you like information?".colorize(:color => :light_yellow)
    puts " "
    puts "Please select a book by typing the corresponding number followed by ENTER.".colorize(:color => :light_yellow)
    puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".colorize(:color => :green) #, :background => :green) # line for spacing aesthetics
    
    input = gets.chomp.to_i - 1 # user input is requested and the user input is turned into an integer for indexing purposes
    if input < 0 || input > 9 # user input is outside of the range of the index of my bookshelf, it tells the user they made the wrong selection
      self.wrong_selection
    end
      book = Books.all[input] # the variable book is becoming the instance which was selected by the user
      @@book = book
      self.get_book_details(self.book) # pulls the details for the book the user selects 
  end
    
  def self.book
    @@book
  end
    
  def self.get_book_details(book) # outputs books details based upon user selection
    puts "" # TODO: add other lines and colors for aesthetics and url, more details, too
    puts "___________________________--_-- #{book.title} --_--___________________________".colorize(:color => :cyan)  #, :background => :blue)
    puts "Title: #{book.title}"
    puts "Author: #{book.author}"
    puts "Date published: #{book.date_pub}"
    puts "Description: " ##{book.description}
    puts book.description
    puts "For more information, google book id: #{book.id}"
    self.user_options
  end
    
  def self.user_options
    curtains(2, 1)
      puts "Please type 11 followed by ENTER if you would like to exit the booku program." # give the user the option of exiting the program
      puts " "
      puts "Otherwise, you may type 12 followed by ENTER to choose a book from the shelf." # give the user an option to choose another book
    input = gets.chomp.to_i
    if input == 11
      self.leave_bookshelf
    end
    if input == 12  
      self.list_books 
    end  # lists the books on my bookshelf for user selection using Command Line Interface
    if input.between?(1, 10)  
      self.mystery 
      self.user_options
    end
      self.wrong_selection
  end
    
  def self.leave_bookshelf
    curtains(5, 0.1)
    puts " "
    puts "                     Thank you for perusing my bookshelf!".colorize(:color => :cyan)
    puts " "
    curtains(5, 0.1)
    exit
  end

  def self.mystery
    # should be triggered by pressing 4-10 when prompted to input 2 or 11 for exit or choose again
    curtains(4, 0.5)
    puts "        Oh dear! You found the secret passageway behind the bookshelf!".colorize(:color => :red).bold
    curtains(6, 0.5)
    puts "         You better not tell anyone! Now go back to looking at books!".colorize(:color => :red).bold
    curtains(4, 0.5)
  end

  def self.wrong_selection
    # if input = 11..# anything not 2 or 3 - and above 10 and symbols and letters etc
      curtains(2, 0.75)
      puts " "
      puts "                      Oops, you made an invalid selection.".colorize(:color => :magenta)
      puts " "
      self.user_options
  end

end

