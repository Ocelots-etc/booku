class API
  
  def self.call_api
    bookshelf = ["VmuWQ0vdpmQC", "c6TzjDsXDF4C", "83p-OMrNalYC", "dY4tbV1ewggC", "kotPYEqx7kMC", "-o-2KpQlFNsC", "ZbsPom3FTjUC", "O-Z1-eAQzPIC", "FY2alM71xL0C", "VB7IAgAAQBAJ"]
    bookshelf.each_with_index do |book, n|
      resp = RestClient.get("https://www.googleapis.com/books/v1/volumes/#{book}")
      bookshelf_hash = JSON.parse(resp, symbolize_names: true)
      description = self.scrub_html(bookshelf_hash[:volumeInfo][:description])
      description = self.wrap_text(description)
      Books.new(bookshelf_hash[:volumeInfo][:title], bookshelf_hash[:volumeInfo][:authors][0], bookshelf_hash[:volumeInfo][:publishedDate], description, bookshelf_hash[:id])
    end
  end
  
  # Tried to download a gem for this but had version errors
  def self.scrub_html(string)   #remove html tags from a string
    tags = ['<br>','</br>','<b>','</b>','<p>','</p>','<i>','</i>']  #list of tags to scrub
    tags.each do |tag|
      string = string.gsub(tag, "")
    end
    return string
  end

                                            # This method returns the string as an array.  Each element in the array is a substring 
  def self.wrap_text(string)                # of the method argument (description string) with a length less than max_length
      strary = []                           # Output array            
      max_line = 80                         # the max characters per line    
      l = string.length                     # l holds the length of the string which is the large or small description of the book 
      l < max_line ? (return string) : n=0  # if the string isn't long enough to wrap then exit method
      while n <= l                          # n - is the current index position in the string and the starting index position of each substring (line)
        nn = max_line                       # nn is the substring (line) length and varies based on where each space is located
        ll = string[n..].length             # ll (last line/line length) is used to check if we are on the last line
        ll < nn ? nn = ll : nn = string[n..(n + nn)].rindex(" ")     #if on the last line nn (line length) is set to the number of characters left to avoid 'out of index' error
        substr = string[n..(n + nn)]        # substring is a line
        if substr.start_with?(" ")          # remove spaces at beginning of lines
          n += 1                            # line starts after the first space
          substr = string[n..(n + nn)]      # puts length of string without other circumstances such as beginning with a space or ending with too many characters
        end
        strary << substr                    # add each line to output array
        n += (nn + 1)                       # iterates through the long string which is the description
      end
      return strary                         # returns array of string elements which are substrings of the input string which makes up the description 
    end
end
# this method variable, bookshelf, holds 10 books we will pull from the API TODO: pull 10 books from API
# bookshelf.each_with_index iterates through the books and assigns them an index (0-9)
# as our data was held in a nested hash, as well, the authors attribute was a nested array inside of that hash
# symbolizing the attributes and noting a singular index marker for authors simplified the process and cleaned the data
# resp is the response from the API formatted by .json
# turned the javascript object notation into a ruby hash using with key names symbolized
# calls on the books class to initialize a new instance of each book along with its details



 


