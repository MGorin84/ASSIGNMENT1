# Build-A-Bear project 
## Statement of Purpose and Scope

Build-a-Bear application is designed for creating personalized plush toys. It is an interactive program allowing user to choose a kind of animal, colour, outfit, accessories for custom made toy and name it. As a result it generates a message from the toy and a "Birth certificate", stating the names of the toy and its owner with the date of its creation.

It is made as a fun activity and can also be used in real workshops to collect user selection for custom made plush toys.

The application is made for kids and everyone who loves plush animals.

## Features

* ##### Choice of colour and accessories. 
There is a choice of colour and a choice of multiple accessories. There is a list of colours offering one selection and a multiple  choice list of accessories.
* ##### Outfit options
For the outfit there is a special option with a selection ot special outfits featuring different occupations or a simple option with a choice of either a dress or an overall followed by a choice of colour
* ##### Printed "Birth Certificate"
When all the choices are made the brand new toy will be given a "Birth certificate" stating its name, user's name and a date of its creation. Birth certificate is printed in a separate file with the same name as the toy's.

## User interaction plan

The program needs to collect user's full name to run. It is collected through ARGV and it is used at the end to generate a "birth certificate" file.

It continues to collect data giving the user multiple choice to select or asking to type in data. In case of asking for user's input there is a clear explanation of what kind of data the program needs to continue to run.

There are several points when user's data doesn't get accepted if it is invalid in which case it returns the user to the point of expecting input. 

As a result the program generates a file with the same name as toy's which is chosen by the user. In case of an error of failing to print a file, it will display an error message and stop.

## Help

##### Steps to install the application

* Install Ruby version 2.5.1 if not installed already
* There is a `build.sh` file containing a list of commands to install required gems and start the application. Run it through the terminal
* Run `main.rb` followed by your first name and your last name. The program won't run without it
* When it is finished running you can find "Birth certificate" in a text file with the same name as you chose for your toy

## Implementation plan

##### Classes and methods

* There is one class called `PushToys` used in the application, which provides a template for the data collected from the user. There are 5 attributes of the class.
When user makes a selection it gets assigned to a variable. That variable is used as an attribute while initializing a new toy when all the choices are made.
* There are three class methods.
`hello` method prints out a message from a new toy using class attributes  
`birth_certificate` method creates a file and prints "Birth certificate" stating names of the toy and the user with the date of its creation. It uses class attributes and `Time` class to get current date.
`read_birth_certificate` reads the "Birth certificate" file 

##### The application includes following features
1. ##### Choice of colour and accessories. 
There is a choice of colour and a choice of multiple accessories. There is a list of colours offering one selection and a multiple  choice list of accessories.
* An array containing colours is used foe colour selection,`colorize` gem is used for a better display of colours
* `tty-prompt`gem used to get user choices.
`prompt.select` for colours and `prompt.multi_select` for accessories
    
2. ##### Outfit options
For the outfit there is a special option with a selection ot special outfits featuring different occupations or a simple option with a choice of either a dress or an overall followed by a choice of colour
* There is an option of a special outfit placed in a user input question, expecting "y" or "n" response. The program loops in case of invalid input until the decision is made and then does to the next part.
* In case of simple outfit option, the program gets a colour selection, creates an outfit and goes to the next part
* The choice of outfit is reflected in a message from the toy generated at the end of the program 

3. ##### Printed "Birth Certificate"
When all the choices are made the brand new toy will be given a "Birth certificate" stating its name, user's name and a date of its creation. Birth certificate is printed in a separate file with the same name as the toy's.
* There is a class method creating a text file and writing "birth certificate" in it.
* "Birth certificate" contains the name and the kind of a plush animal, chosen by user
* "Birth certificate" contains the date toy was created, which is generated using `Time` class and formatted in a user friendly way.
* "Birth certificate" also contains user's name which is taken at the beginning of the program through the terminal using `ARGV`

## Manual testing

There is one test method created for `birth_certificate` class method. 
It is designed to check if the method creates a new file with the name of the toy, initialized in a class.

In order for the test method to work, a `test_toy` is initialized in it. 

The test method calls `birth_certificate` on `test_toy` and then checks if the text file with a given name exists

The test was run a few times during the development. Passed each time



