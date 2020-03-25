module RepeatRepeat

    require 'colorize'

    def curtains(n, a)
        while n > 0
          puts "      o          o          o          o          o          o          o        ".colorize(:color => :blue)  #:background => :blue)
          puts "   o     o    o     o    o     o    o     o    o     o    o     o    o     o     ".colorize(:color => :blue)  #:background => :blue)
          puts "o          o          o          o          o          o          o          o   ".colorize(:color => :blue)  #:background => :blue)
           n -= 1
          sleep(a)
        end
    end

end