

class TV
  attr_accessor :myTV
  def initialize(myTV)
    @myTV = myTV
  end

  def start
    puts "On or off?"
      invalid_choice = true
      while invalid_choice
        onOff = gets.chomp

        if onOff.downcase != 'on' && onOff.downcase != 'off'
          puts 'Please enter on or off'
        else
          invalid_choice = false
        end
      end

      if onOff == 'on'
        puts 'TV is on.'
        volume
      else
        puts 'Tv is off, goodbye.'
      end

  end

  def volume
    puts "Choose a volume between 1 and 32 or 0 to mute"
      invalid_volume = true
      while invalid_volume
        volumeLevel = gets.to_i
        @ourVolume = Voluminous.new(volumeLevel)

        if volumeLevel < 0 || volumeLevel > 32
          puts 'Please enter 1 - 32'
        else
          invalid_volume = false
        end
      end
        if volumeLevel == 32
          puts "#{@ourVolume.ourVolume} is way too loud but ok"
        elsif volumeLevel == 0
            puts "The TV is muted. You begin to think about the yawning chasm of mortality."
        elsif volumeLevel < 32 && volumeLevel > 15
          puts '#{@ourVolume.ourVolume} is kind of loud... Your neighbors will be ticked.'
        else
          puts "#{@ourVolume.ourVolume}... Can you even hear that?"
        end
      channel
  end
  def channel
    puts "Choose a channel between 1 and 100"
      invalid_channel = true
      while invalid_channel
        channelNumber = gets.to_i

        if channelNumber < 1 || channelNumber > 100
          puts 'Please enter 1 - 100 or pay Comcast for an upgrade'
        else
          invalid_channel = false
        end
      end
        if channelNumber == 100
          puts "The screen is blurry, soft bow chika wow wows play"
        elsif channelNumber < 30 && channelNumber > 20
          puts "It's Sponge Bob! YESSSS!!"
        elsif channelNumber < 50 && channelNumber > 31
          puts "2004 summer Olympics review"
        else
          puts "It's a Law & Order rerun marathon. You'd better get comfy"
        end
  end


end

class Voluminous
  attr_accessor :ourVolume

  def initialize(ourVolume)
    @ourVolume = ourVolume
  end
end

game = TV.new(2)
game.start
