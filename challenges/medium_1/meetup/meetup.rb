require 'date'

class Meetup
  TEENTHS = [13, 14, 15, 16, 17, 18, 19]
  PLACE = { :first => 0, :second => 1, :third => 2, :fourth => 3, :last => -1 }
  DAYS = {  :sunday => 0, :monday => 1, :tuesday => 2, :wednesday => 3,
          :thursday => 4, :friday => 5, :saturday => 6 }
          
  def initialize(month, year)
    @date = Date.new(year, month)
  end
  
  def day(weekday, schedule)
    schedule_checker(weekday, schedule)
  end
  
  # find all days (all Mondays, for example) in month
  def find_all_days(weekday, schedule)
    month_end = Date.civil(@date.year, @date.month, -1)
    days = (@date..month_end).select { |x| x.wday == DAYS[weekday] }
    days[PLACE[schedule]]
  end
  
  def find_teenth(weekday, schedule)
    counter = 0
    loop do
      result = TEENTHS.include?((@date + counter).day) && (@date + counter).wday == DAYS[weekday]
      break (@date + counter) if result == true
      counter += 1
    end
  end
  
  def schedule_checker(weekday, schedule)
    if PLACE.include?(schedule)
      find_all_days(weekday, schedule)
    else
      find_teenth(weekday, schedule)
    end
  end
    
end # end Meetup class

# tester = Date.new(2013, 5)
# p tester.wday
# p tester.strftime("%A")

# expected = Date.new(2013, 5, 13),
# result = Meetup.new(5, 2013).day(:monday, :teenth)
# p result == Date.new(2013, 5, 13)

# puts "==========="

# expected = Date.new(2013, 3, 4)
# result = Meetup.new(3, 2013).day(:monday, :first)
# p expected == result 