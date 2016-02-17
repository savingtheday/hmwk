class Elephant
  attr_reader :name
  def initialize(name)
  @name = name
  end
end

elephant = Elephant.new("Dumbo")
elephant.name





class Donut
  def what_kind
    puts "This is #{@type} #{@flavor}"
  end
end



class Special < Donut
  def initialize(type, flavor)
    @type = type
    @flavor = flavor
  end
end

my_pastry = Special.new("glazed", "choco")
my_pastry.what_kind



def recursive(number)
  puts number
  if number == 0
    puts "all done"
  elsif number < 100
    recursive(number -1)
  end
end

recursive(9)



class Hotel
  attr_accessor :name #this is a thing that can be changed
  def initialize(h_name, h_location) #this is an argument that can be passed
    @name = h_name
    @location = h_location
  end

end

#a = Array.new
h = Hotel.new




