class PingGame
  NUMBERS = (1..100).to_a.freeze
  MAX_GUESSES = 7
  
  def play
    reset
    guess
    check_for_winner
  end
  
  def reset
    @number = NUMBERS.sample
    @guesses = MAX_GUESSES
  end
  
  def check_for_winner
    if @choice == @number
      puts("You won! It was #{@number}.") 
    else
      puts("Bye. You lost. It was #{@number}.")
    end
  end
  
  def guess
    MAX_GUESSES.times do |num|
      puts "You have #{MAX_GUESSES - num} guess(es) remaining."
      loop do
        puts "Enter a number between 1 and 100"
        @choice = gets.chomp.to_i
        break if NUMBERS.include?(@choice)
        puts "Please enter a valid number."
      end
      display_results
      break if game_over?
    end
  end
  
  def game_over?
    @guesses == 0 || winner?
  end

  def winner?
    @choice == @number
  end
  
  def display_results
    if @choice < @number
      puts("You entered #{@choice}. That's too low.")
    elsif @choice > @number
      puts("You entered #{@choice}. That's too high.")
    else
      #
    end
  end
end # class PingGame end

game = PingGame.new
game.play
