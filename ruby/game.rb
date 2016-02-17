class Game
  def start
    @game_running = true
​
    puts "Hello, what is your name?"
    user_name = gets.chomp
    @user = User.new(user_name)
​
    puts "Hello #{@user.name}, welcome to my game"
​
    run_game
  end
​
  def run_game
    while @game_running
​
      puts "You're in a hallway and you reach an area that splits into two paths , which one do you choose? Left or right?"
​
      invalid_path = true
      while invalid_path
        path = gets.chomp
​
        if path.downcase != 'left' && path.downcase != 'right'
          puts 'Please enter left or right'
        else
          invalid_path = false
        end
      end
​
      if path.downcase == 'left'
        ogre = Ogre.new("Poe")
        puts "You go left. You see #{ogre.name}. #{ogre.attack}. You die."
      else
        puts "You go right. You find the treasure."
      end
​
      @game_running = false
    end
​
    puts 'Game Over'
  end
end
​
class Monster
  attr_accessor :name
​
  def attack
    "#{@name} says #{speak()} and attacks you"
  end
end
​
class Ogre < Monster
​
  def initialize(name)
    @name = name
  end
​
  def speak
    "arghhh"
  end
end
​
class User
  attr_accessor :name
​
  def initialize(name)
    @name = name
  end
end
​
game = Game.new
game.start
