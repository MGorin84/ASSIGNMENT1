#!/bin/sh
echo "Hello!"
# make a disc folder
mkdir -p build_a_bear
#copy code into the folder
cp main.rb classes.rb build_a_bear
#install gems
gem install colorize
gem install tty-prompt
gem install artii
#run the program
echo "Please type your first name and your last name following the next command" 
echo "ruby main.rb 'first name' 'last name'"

