class Books

  attr_accessor :title, :author, :categories, :date_pub, :description, :id  # class instance variables initialized
  # through a reader and a writer by using attr_accessor to make the variables available outside of the class

  @@all = []  # the class variable array

  #------------------------------------------------------------------------------------
  def initialize(title, author, date_pub, description, id)  # this method creates a new instances of a
    @title = title  # book from the API output and assigns the attributes to instance variables
    @author = author
    @date_pub = date_pub
    @description = description
    @id = id
    @@all << self  # stores each and every instance of a book in the class variable array
  end
  #------------------------------------------------------------------------------------
  #
  #------------------------------------------------------------------------------------
  def self.all  # this permits the class variable array to be utilized in other classes and methods
    @@all
  end
  #-------------------------------------------------------------------------------------
end
