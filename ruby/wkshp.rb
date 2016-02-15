def murica()
  n = "Donuts wrapped in bacon." #this had to come first
  puts n.to_s + "Only in America!"
end
murica


someNums = [100, 2843, 19, 222]
def runNums(someNums)

  highest = 0
  someNums.each do |item| #does the thing for each item
    if item > highest
     highest = item
   end
  end
  puts highest
end

runNums(someNums)



#first = [:Jon, :Cersi, :Dany]
#last = ["Snow", "Lannister", "Targeryan"]

def combining()
  first = [:Jon, :Cersi, :Dany]
  last = ["Snow", "Lannister", "Targeryan"]
  newHash = {}
    first.each_with_index do |puppy, kitten|
    newHash[puppy] = last[kitten]
  end
  puts newHash #put this afte the loop or else it will spit out 3 lines with the names
end

combining




def fizzing()
  for i in 1..100
    if i % 5 == 0 && i % 3 == 0
     # puts i.to_s + "FizzBuzz"
     puts "FizzBuzz"
    elsif i % 5 == 0
      puts "buzz"
    elsif i % 3 == 0
      puts "fizz"
    else
      puts i
    end
  end
end

fizzing
