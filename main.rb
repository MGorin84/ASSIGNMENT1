require "colorize"
require "artii"
require "tty-prompt"
require_relative "classes"

prompt = TTY::Prompt.new
artii = Artii::Base.new

puts artii.asciify("Welcome!").colorize(:red)
puts "Welcome to Build-a-Bear workshop! Let's start creating!".colorize(:red)
puts "Let's begin with choosing your fluffy friend?".colorize(:green)

choice_of_animal = prompt.select("Please select one you like most!", %w(Bear Bunny Unicorn Kitten Puppy Giraffe Hippo))
kind = choice_of_animal.downcase
colours = ["red".colorize(:red), "blue".colorize(:blue), "yellow".colorize(:yellow), "white".colorize(:white), "black".colorize(:black).on_white, "pink".colorize(:fuchsia), "green".colorize(:green), "purple".colorize(:magenta), "rainbow".colorize(:multicolor)] 

choice_of_colour = prompt.select("What colour would you like your #{kind} to be?", colours)
colour = choice_of_colour.downcase

puts ("Yay! You have a #{colour} #{kind} now!").colorize(:red)
puts ("Now it's time to choose an oufit for your #{kind}!").colorize(:green)

outfit = 0
until outfit != 0
puts ("We have some special outfits in store. Would you like your #{kind} to wear one?") + (" Y or N?").colorize(:green)
answer = gets.chomp.downcase
    if answer == "y"
        choice_of_outfit = prompt.select("Great! Now choose a special outfit", %w( Doctor Firefigter Policeman Nurse Pilot Taxidriver Builder))
        outfit = choice_of_outfit
        puts "Wow! Your #{kind} is a #{outfit}!!!"
    elsif answer == "n"
        choice_of_outfit = prompt.select("Ok! Let's choose what your #{kind} will wear then. What will you choose?", %w(dress overalls))
        outfit_colour = prompt.select("What colour #{choice_of_outfit}?", colours) 
        outfit = outfit_colour + " " + choice_of_outfit
        puts "Great! #{outfit} it is!"
    else
        puts "Invalid input"
        outfit = 0
    end
end 

choice_of_accessories = prompt.multi_select("Let's choose some accessories for your friend! You can choose as many as you like!", %w(backpack umbrella cap headphones sunglasses glasses))    
accessories = choice_of_accessories

puts  ("Great! Almost there!").colorize(:red)
name = 0
while name == 0
puts ("Lets name your new friend! What would it be?").colorize(:green)
choice_of_name = gets.chomp
    case choice_of_name.length
    when  0..15
            name = choice_of_name
            puts ("#{name} suit your #{kind} so much!!!").colorize(:red)
    else
            puts ("#{choice_of_name} is a bit long. Please choose a shorter one!").colorize(:red)
    end
end

your_toy = PlushToys.new(kind, name, colour, outfit, accessories)
puts artii.asciify("Yay!").colorize(:red)

your_toy.hello
your_toy.birth_certificate



    






