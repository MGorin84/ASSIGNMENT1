require "colorize"
require "artii"
require "tty-prompt"
require_relative "classes"
prompt = TTY::Prompt.new
artii = Artii::Base.new

if ARGV.length < 2
    puts "Oops! Looks like you forgot to give us your name. \nPlease enter your first name followed by your last name to start a program".colorize(:red)
    exit
else
end
puts artii.asciify("Welcome!\n").colorize(:red)

user_first_name = ARGV[0]
user_last_name = ARGV[1]
user_full_name = user_first_name + " " + user_last_name

puts "\nHello #{user_first_name} and welcome to Build-a-Bear workshop!\nYou are ready to start creating!\n".colorize(:green)

puts "Let's begin with choosing your fluffy friend?\n".colorize(:red)
choice_of_animal = prompt.select("Please select one you like most!", %w(Bear Bunny Unicorn Kitten Puppy Giraffe Hippo Mouse))
kind = choice_of_animal.downcase

colours = ["red".colorize(:red), "blue".colorize(:blue), "yellow".colorize(:yellow), "white".colorize(:white), "black".colorize(:black).on_white, "pink".colorize(:light_magenta), "green".colorize(:green), "purple".colorize(:magenta), "r".colorize(:red) + "a".colorize(:yellow) + "i".colorize(:green) + "n".colorize(:blue) + "b".colorize(:magenta) + "o".colorize(:light_red) + "w".colorize(:cyan)] 
choice_of_colour = prompt.select("\nWhat colour would you like your #{kind} to be?\n", colours).colorize(:green)
colour = choice_of_colour.downcase
puts ("\nYay! You have a #{colour} #{kind} now!\n").colorize(:red)

puts ("Now it's time to choose an oufit for your #{kind}!\n").colorize(:green)

outfit = 0
until outfit != 0
puts ("We have some special outfits in store. Would you like your #{kind} to wear one?") + (" Y or N?").colorize(:green)
# Need to use STDIN because of ARGV.
answer = STDIN.gets.chomp.downcase
    if answer == "y"
        choice_of_outfit = prompt.select("\nGreat! Now choose a special outfit\n", %w( Doctor Firefigter Policeman Nurse Pilot Taxidriver Builder Chef Scientist Waiter Dancer)).colorize(:green)
        outfit = choice_of_outfit
        puts "\nWow! Your #{kind} is a #{outfit}!!!\n".colorize(:green)
    elsif answer == "n"
        choice_of_outfit = prompt.select("\nOk! Let's choose what your #{kind} will wear then. What will you choose?", %w(dress overalls)).colorize(:green)
        outfit_colour = prompt.select("\nWhat colour #{choice_of_outfit}?\n", colours) 
        outfit = outfit_colour + " " + choice_of_outfit
        puts "\nGreat! #{outfit} it is!\n".colorize(:red)
    else
        puts "\nOoops. Try again!\n".colorize(:red)
    end
end

choice_of_accessories = prompt.multi_select("Let's choose some accessories for your friend! You can choose as many as you like!", %w(backpack purse umbrella sunhat cap headphones sunglasses glasses scarf mittens))  
accessories = choice_of_accessories
puts  ("\nGreat! Almost there!").colorize(:red)
name = 0
while name == 0
puts ("\nLets name your new friend! What would it be?").colorize(:green)
choice_of_name = STDIN.gets.chomp
    case choice_of_name.length
    when  0..15
            name = choice_of_name
            puts ("\nWow!#{name} suit your #{kind} so much!!!\n").colorize(:red)
    else
            puts ("\nOoops!#{choice_of_name} is a bit long. Please choose a shorter one!\n").colorize(:red)
    end
end
your_toy = PlushToys.new(kind, name, colour, outfit, accessories, user_full_name)
puts artii.asciify("Yay!").colorize(:red)
your_toy.hello
your_toy.birth_certificate
puts your_toy.read_birth_certificate


    






