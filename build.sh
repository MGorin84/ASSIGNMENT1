#!/bin/sh

echo "Hello!"
# make a disc folder
mkdir -p folder
#copy code into the folder
cp main.rb classes.rb folder
#install gems
gem install colorize
gem install tty-prompt
gem install artii
#run the program
echo "Please type your first name and your last name following the next command" 
ruby main.rb #type your first name and last name here

