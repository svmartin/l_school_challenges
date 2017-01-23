class Clock
  
  attr_accessor :hour, :minute
  
  def initialize(hour, minute=0)
    @hour = hour
    @minute = minute
    distribute_minutes
  end
  
  def time_in_minutes
    ((@hour * 60) + @minute)
    # minutes, seconds = time.divmod(60)
    # hour, minutes = minutes.divmod(60)
    # total_seconds = (hour * 360) + (minutes * 60)
  end
  
  def distribute_minutes
    @hour = (time_in_minutes / 60) % 24
    @minute = time_in_minutes % 60
  end
  
  def self.at(hour, minute=0)
    new(hour, minute)
  end
  
  def +(minutes_to_add)
    Clock.new(hour, minute + minutes_to_add)
  end
  
  def -(minutes_to_subtract)
    Clock.new(hour, minute - minutes_to_subtract)
  end
  
  def ==(other)
    to_s == other.to_s
  end
  
  def to_s
    "#{'%02d' % hour}:#{'%02d' % minute}"
    # format('%02d:%02d', @hour, @minute)
    # @time.strftime("%H:%M")
  end
end # end Clock class

tester = Clock.at(8)
puts tester

puts "==========="

tester2 = Clock.at(23, 30) - 60
puts tester2
