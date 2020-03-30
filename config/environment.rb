#config/
#A complex program might require 100s of individual files containing source code, 
#method definitions, classes, and more that together constitute all the code 
#required to run the application. We call this code the application's 
#environment. We generally put all the code required to initialize the 
#environment within config/. We might see that in a config/environment.rb file 
#or even an entire config/environments/ directory.

#What does it mean to "initialize a program's environment?" Establishing the 
#environment for your program can involve a number of things, but on the most 
#basic level, the config file or directory is responsible for things like file 
#requirements (i.e. making sure your different files have access to one another), 
#establishing connections to your database (if you have one) and ensuring that 
#your test suite has access to the files that contain the code it is testing.