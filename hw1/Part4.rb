class Dessert
    attr_accessor :name #get and set name
    attr_accessor :calories #get and set calories
    
    def initialize(name, calories)
        @name = name
        @calories = calories
    end
    
    def healthy?
    puts (calories < 200) ? "true" : "false" #healthy if under 200 calories
    end
    
    def delicious?
        puts "true" #all desserts are delicious
    end
end

class Jellybean < Dessert
    attr_accessor :flavor #get and set flavor
    
    def initialize(name, calories, flavor)
        super(name, calories)
        @flavor = flavor
    end
    
    def delicious?
        puts (@flavor == "black licorice") ? false : true #not delicious if black licorice
    end
end

puts "Healthy or delicious desserts?"

cupcake = Dessert.new("cupcake", 500)
puts 'Is ' + cupcake.name + ' healthy?'
cupcake.healthy?
puts 'Is ' + cupcake.name + ' delicious?'
cupcake.delicious?

tart = Dessert.new("tart", 140)
puts 'Is ' + tart.name + ' healthy?'
tart.healthy?
puts 'Is ' + tart.name + ' delicious?'
tart.delicious?

blackLicorice = Jellybean.new("jellybean", 100, "black licorice")
puts 'Is ' + blackLicorice.flavor + ' ' + blackLicorice.name + ' healthy?'
blackLicorice.healthy?
puts 'Is ' + blackLicorice.flavor + ' ' + blackLicorice.name + ' delicious?'
blackLicorice.delicious?
