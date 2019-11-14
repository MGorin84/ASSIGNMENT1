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
    puts ("Hello! I am #{@name} the #{@colour.downcase} #{@kind}. I am wearing a #{@outfit} outfit with my #{@accessories[0]} and #{@accessories[1]}").colorize(:blue)
   end

   def birth_certificate
    time = Time.new
    File.write("bc.txt", "#{name} the #{kind} Born on " + time.ctime.to_s)
   end
end

  



