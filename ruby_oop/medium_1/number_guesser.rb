# 1 to 100
# maximum of 7 guesses per game
# each call to play should reset the game object and the number to be guessed

# generate random number between 1 and 100
# store random number
# ask user for guess
# store guess
# keep track of number of guesses
# display number of guesses
# dislay "hint" if number is too high or too low
# each time through, check if user has used all guesses or chosen correct number
# when 'play' is called, new random number should be generated AND guess count
# should go back to ZERO

NUMBERS = (1..100).to_a.freeze

class PingGame
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
