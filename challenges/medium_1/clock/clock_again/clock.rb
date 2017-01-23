class Clock
  def initialize(hour, minutes=0)
    @hour = hour
    @minutes = minutes
    process_time
    # method that returns time/deals with adding subtracting minutes
  end
  
  def self.at(hour, minutes=0)
    new(hour, minutes)
  end
  
  def -(minutes_to_subtract)
    #
  end
  
  def +(minutes_to_add)
    #
  end
  
  def time_in_minutes
    (@hour * 60) + @minutes
  end
  
  def process_time
    @hour = time_in_minutes / 60
    @minutes = time_in_minutes % 60
  end
  
  def to_s
    #"#{format(%d}:#{}"
    "#{'%02d' % @hour}:#{'%02d' % @minutes}"
  end
  
  def ==(other)
    to_s == other.to_s
  end
end # end Clock class

clock = Clock.at(0, 30) - 60
p clock
