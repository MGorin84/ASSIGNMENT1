require "colorize"
class PlushToys
    attr_accessor :kind, :name, :colour, :accessories, :outfit
   
   def initialize(kind, name, colour, outfit, accessories)
    @kind = kind
    @name = name
    @colour = colour
    @outfit = outfit
    @accessories = accessories
   end

   def hello
    puts ("Hello! I am #{@name} the #{@colour.downcase} #{@kind}!").colorize(:blue)
        if accessories.length == 2
            puts ("I am wearing a #{@outfit} outfit with my #{@accessories[0]} and #{@accessories[1]}").colorize(:blue)
        elsif accessories.length == 1
            puts ("I am wearing a #{@outfit} outfit with my #{@accessories[0]}!").colorize(:blue)
        elsif accessories.length == 0 
            puts("I am wearing a #{@outfit} outfit!")
        else 
            puts ("I am wearing a #{@outfit} outfit with my favourite accessories").colorize(:blue)
        end
    end

   def birth_certificate
    begin
        time = Time.new
        File.write("bc.txt", "#{name} the #{kind} Born on " + time.ctime.to_s)
    rescue
        puts "Failed to write in a file"
    end
   end
end

