class TV
  attr_accessor :channel, :volume


  def initialize(channel, volume)
    @channel = channel
    @volume = volume
    if @volume == 0
      puts 'The TV is muted'
    end
    raise ArgumentError, "Channel must be between 1 and 100" if @channel > 100 || @channel < 1
    raise ArgumentError, "Volume must be between 1 and 32" if @volume > 32 || @volume < 0
    puts "Your current volume is #{@volume} and you're watching channel #{@channel}"
    end

  def mute
    @mute == @volume*0
    puts "The TV is muted"
  end

  def unmute
    @volume = volume
    puts "Your current volume is #{@volume}"
  end

  def volumeUp
    @volumeUp = @volume+1
    puts "Your current volume is now #{@volumeUp}"
  end
  def volumeDown
    @volumeDown = @volume-1
    puts "Your current volume is now #{@volumeDown}"
  end

  def channelUp
    @channelUp = @channel+1
    puts "Your current channel is now #{@channelUp}"
  end
  def channelDown
    @channelDown = @channel-1
    puts "Your current channel is now #{@channelDown}"
  end

  def turnOff
    puts "Goodbye"
  end

end


