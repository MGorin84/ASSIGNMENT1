# Maria's Build-A-Bear project 
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

It continues to collect data giving the user maltiple choice to select or asking to type in data. In case of asking for user's input there is a clear explanation of what kind of data the program needs to continue to run.

There are several points when user's data doesn't get accepted if it is invalid in which case it returns the user to the point of expecting input. 

As a result the program generates a file with the same name as toy's which is chosen by the user. In case of an error of failing to print a file, it will display an error message and stop.

## Help

##### Steps to install the application

* Install Ruby version 2.5.1 if not installed already
* There is a `build.sh` file containing a list of commands to install required gems and start the application. Run it through the terminal






 

