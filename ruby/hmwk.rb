
n = 4
def math(n)
  puts (n*2)+10
end
math(n)


word = "kayak"
def palin(word)
  if word == word.reverse #&& word == word.casecmp
    puts true
  else
    puts false
  end
end
palin(word)




class Dinosaur
  def roar
    puts 'roar'
  end
end

Dinosaur.new


#or

class Dino
  def initialize #the constructor is always initialize
    @roar = 'roar'
  end
  def roar
    puts @roar
  end
end

Dino.new.roar


irb(main):020:0> class GordonRamsay
irb(main):021:1> def initialize
irb(main):022:2> @question = 'What kind of sandwich are you?'
irb(main):023:2> @answer = 'An idiot sandwich.'
irb(main):024:2> end
irb(main):025:1> def ask
irb(main):026:2> puts @question
irb(main):027:2> end
irb(main):028:1> def answer
irb(main):029:2> puts @answer
irb(main):030:2> end
irb(main):031:1> end



irb(main):055:0> class Echo
irb(main):056:1> def compute
irb(main):057:2> puts 'Computing....'
irb(main):058:2> end
irb(main):059:1> def self.destroy_humanity
irb(main):060:2> puts 'Amazon Echo here to destroy.'
irb(main):061:2> end
irb(main):062:1> end
=> nil
irb(main):063:0> Echo.destroy_humanity
Amazon Echo here to destroy.
=> nil
irb(main):064:0> Echo.new.compute
Computing....



irb(main):076:0> class Elephant
irb(main):077:1> attr_reader :name
irb(main):078:1> def initialize(name)
irb(main):079:2> @name = name
irb(main):080:2> end
irb(main):081:1> end
=> nil
irb(main):082:0> elephant = Elephant.new("Dumbo")
irb(main):084:0> elephant.name
=> "Dumbo"


class Donut
  attr_selector :type, :flavor
  def what_kind
    puts "This is #{@type} #{@flavor}"
  end
end

instance = Donut.new
instance.type = "glazed"
instance.flavor = "choco"

instance.what_kind




class Beer




def abbv()
  states = ["Pennsylvania", "Maine", "Delaware"]
  abbreviations = []
  newerHash = {}
    states.each_with_index do |item|
      abbreviations.push(item)
      abbreviations.map!(&:upcase)
    end
    states.each_with_index do |value, item|
    newerHash[value] = abbreviations[item]
  end
  puts newerHash
end

abbv




def combining()
  first = [:Pennsylvania, :Alaska, :Maine]
  last = ["PA", "AL", "ME"]
  newHash = {}
    first.each_with_index do |puppy, kitten|
    newHash[puppy] = last[kitten]
  end
  puts newHash #put this afte the loop or else it will spit out 3 lines with the names
end

combining

