require "colorize"
require "date"
class PlushToys
    attr_accessor :kind, :name, :colour, :accessories, :outfit
   
   def initialize(kind, name, colour, outfit, accessories, user_full_name)
    @kind = kind
    @name = name
    @colour = colour
    @outfit = outfit
    @accessories = accessories
    @user_full_name = user_full_name
   end

   def hello
    puts ("\nHello! I am #{@name} the #{@colour.downcase} #{@kind}!").colorize(:blue)
        if accessories.length == 2
            puts ("I am wearing a #{@outfit} outfit with my #{@accessories[0]} and #{@accessories[1]}.").colorize(:blue)
        elsif accessories.length == 1
            puts ("I am wearing a #{@outfit} outfit with my #{@accessories[0]}!").colorize(:blue)
        elsif accessories.length == 0 
            puts("I am wearing a #{@outfit} outfit!")
        else 
            puts ("I am wearing a #{@outfit} outfit with my favourite accessories.").colorize(:blue)
        end
    end

   def birth_certificate
    begin
        time = Time.new
        File.write(@name+".txt", "\n#{name} the #{kind} \nCreated on " + time.strftime("%A").to_s + " the " + time.strftime("%d").to_s + " of " + time.strftime("%B").to_s + " " + time.year.to_s + "\nby #{@user_full_name}")
    rescue
        puts "Failed to write in a file\n"
    end
   end

   def read_birth_certificate
    File.read(@name+".txt")
   end
end

