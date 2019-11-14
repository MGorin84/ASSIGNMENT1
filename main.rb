require "colorize"
require "artii"
require "tty-prompt"
require_relative "classes"

prompt = TTY::Prompt.new
artii = Artii::Base.new

puts artii.asciify("Welcome!").colorize(:red)
puts "Welcome to Build-a-Bear workshop! Let's start creating!".colorize(:red)
puts "Let's begin with choosing your fluffy friend?"

choice_of_animal = prompt.select(" Please select one you like most!", %w(Bear Bunny Unicorn))
kind = choice_of_animal.downcase
 
choice_of_colour = prompt.select("What colour would you like your #{kind} to be?", %w( Red, Blue, Yellow, White, Black, Brown, Green, Pink, Rainbow)
colour = choice_of_colour

puts "Yay! You have a #{colour} #{kind} now!"
puts "Now it's time to choose an oufit for your #{kind}!/n"    

