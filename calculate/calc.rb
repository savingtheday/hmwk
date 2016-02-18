class Calculator
  def start

    puts "Hello, what is your first number?"
    ourValue1 = gets.chomp.to_i
    @user = Val1.new(ourValue1)
    puts "And what is your second number?"
    ourValue2 = gets.chomp.to_i
    @user2 = Val2.new(ourValue2)
    #puts @user2.name2 + 1

    addition
  end

  def addition
    puts "adding #{@user2.val2 + @user.ourValue}"
    subtraction
  end

  def subtraction
    puts "subtract #{@user.ourValue - @user2.val2}"
    multiplication
  end

  def multiplication
    puts "multiply #{@user2.val2 * @user.ourValue}"
    division
  end

  def division
    puts "division #{@user.ourValue / @user2.val2}"
  end


end





class Val1
  attr_accessor :ourValue

  def initialize(ourValue)
    @ourValue = ourValue
  end
end

class Val2
  attr_accessor :val2

  def initialize(val2)
    @val2 = val2
  end
end


game = Calculator.new
game.start
