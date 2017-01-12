# 1 to 100
# maximum of 7 guesses per game
# each call to play should reset the game object and the number to be guessed
NUMBERS = (1..100).to_a.freeze

class PingGame
  def initialize
    @number = (1..10).to_a.sample
    @guesses = 7
    @choice = nil
  end
  
  def play
    loop do
      puts "You have #{@guesses} remaining."
      loop do
        puts "Enter a number between 1 and 100"
        @choice = gets.chomp.to_i
        break if NUMBERS.include?(@choice)
        puts "Please enter a valid number."
      end
      @guesses -= 1
      break if @guesses == 0 || winner?
    end
    result = winner? ? "You won! It was #{@number}." : "Bye. You lost. It was #{@number}."
    puts result
  end
  
  def winner?
    @choice == @number
  end
end # class PingGame end

game = PingGame.new
game.play
