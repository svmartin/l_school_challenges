class Banner
  def initialize(message)
    @message = message
    @width = message.length
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+" + ("-" * (@width + 2)) + "+"
  end

  def empty_line
    "| " + (" " * @width ) + " |"
  end

  def message_line
    "| #{@message} |"
  end
end

tester = Banner.new('To boldly go where no one has gone before.')
tester2 = Banner.new('')
puts tester
puts tester2
