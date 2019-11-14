
class PlushToys
    attr_accessor :kind, :name, :colour, :accessories, :outfit
   
   def initialize(kind, name, colour, outfit, accessories)
    @kind = kind
    @name = name
    @colour = colour
    @outfit = outfit
    @accessories = []
   end

   def hello
    puts "Hello! I am #{name} the #{colour.downcase} #{kind}. I am wearing a #{outfit} outfit  with my #{accessories[0]} and #{accessories[1]}"
   end

   def birth_certificate

   end


end

  



