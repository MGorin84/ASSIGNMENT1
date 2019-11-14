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
 
choice_of_colour = prompt.select("What colour would you like your #{kind} to be?", %w(Red Blue Yellow White Black Brown Green Pink Rainbow))
colour = choice_of_colour.downcase

puts "Yay! You have a #{colour} #{kind} now!"
puts "Now it's time to choose an oufit for your #{kind}!"

outfit = 0
until outfit != 0
puts "We have some special outfits in store. Would you like your #{kind} to wear one? Y or N?"
answer = gets.chomp.downcase
    if answer == "y"
    choice_of_outfit = prompt.select("Great! Now choose a special outfit", %w( Doctor Firefigter Policeman Nurse Pilot Taxidriver Builder))
    outfit = choice_of_outfit
    puts "Wow! Your #{kind} is a #{outfit}!!!"
    elsif answer == "n"
    choice_of_outfit = prompt.select("Ok! Let's choose what your #{kind} will wear then. What will you choose?", %w(Dress Overalls))
    outfit_colour = prompt.select("What colour #{choice_of_outfit}?", %w(Red Blue Yellow White Black Brown Green Pink )) 
    outfit = outfit_colour + " " + choice_of_outfit
    puts "Great! #{outfit} it is!"
    else
    puts "Invalid input"
    output = 0
    end
end

choice_of_accessories = prompt.multi_select("Would you like to add some accessories? You can choose a few!!", %w(Backpack Umbrella Cap Headphones Sunglasses Glasses))

accessories = choice_of_accessories
puts accessories
puts "Great! Almost there! Lets name your new friend!!!"
name = gets.chomp
puts "#{name} suit your #{kind} so much!!!"


your_toy = PlushToys.new(kind, name, colour, outfit, accessories)

your_toy.hello



    






