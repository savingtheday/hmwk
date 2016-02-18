

class Elevator
  attr_accessor :ourFloor
  def initialize(ourFloor)
    @ourFloor = ourFloor
  end

  def start
    puts "What floor would you like to go to? Please choose a number between 1 and 2"
      invalid_floor = true
      while invalid_floor
        floor = gets.chomp

        if floor != '1' && floor != '2'
          puts 'Please enter 1 or 2'
        else
          invalid_floor = false
        end
      end

      if floor == '1'
        puts 'Floor one, eternal damnation.'
      else
        puts 'Floor two, menswear. We wear the skins of men.'
      end
    moving
  end

  def moving
    puts "Would you care for some music? Yes or no?"
      invalid_music = true
      while invalid_music
        music = gets.chomp

        if music.downcase != 'yes' && music.downcase != 'no'
          puts 'Please enter yes or no'
        else
          invalid_music = false
        end
      end
        if music == 'yes'
          puts 'Slow, smooth jazz begins playing. You feel relaxed.'
        else
          puts "Too bad. Linkin Park's 'What I've Done' begins playing at an excessive volume"
        end

  end


end





class Greet
  attr_accessor :cheery

  def initialize(cheery)
    @cheery = cheery
  end
end



game = Elevator.new(2)
game.start
