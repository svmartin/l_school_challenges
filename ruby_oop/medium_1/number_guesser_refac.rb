class PingGame
  NUMBERS = (1..100).to_a.freeze

  def initialize
    @guesses = 7
    @choice = nil
  end
  
  def play
    @number = (1..100).to_a.sample
    loop do
      puts "You have #{@guesses} guesses remaining."
      loop do
        puts "Enter a number between 1 and 100"
        @choice = gets.chomp.to_i
        break if NUMBERS.include?(@choice)
        puts "Please enter a valid number."
      end
      display_results
      @guesses -= 1
      break if @guesses == 0 || winner?
    end
    result = winner? ? "You won! It was #{@number}." : "Bye. You lost. It was #{@number}."
    puts result
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
