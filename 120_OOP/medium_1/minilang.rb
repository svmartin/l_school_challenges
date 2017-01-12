# initialize register to 0
# produce an error if unexpected item is present in string
# produce an error if require @stack value is not there when it should be (@stack empty)
# 

class MinilangRuntimeError < RuntimeError; end
class BadActionError < MinilangRuntimeError; end
class EmptyStackError < MinilangRuntimeError; end

class Minilang
  ACTIONS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)
  
  def initialize(string)
    @input = string.split
    @register = 0
    @stack = []
  end
  
  def eval
    @input.each do |action|
      validate(action)
    end
  rescue MinilangRuntimeError => error
    puts error.message
  end
  
  def validate(action)
    if ACTIONS.include?(action)
      send(action.downcase)
    elsif action.to_i.to_s == action
      @register = action.to_i
    else
      raise BadActionError, "Invalid action: #{action}"
    end
  end
  
  def push
    @stack.push(@register)
  end
  
  def add
    @register = @register + @stack.pop
  end
  
  def sub
    @register = @register - @stack.pop
  end
  
  def mult
    @register = @register * @stack.pop
  end
  
  def div
    @register = @register / @stack.pop
  end
  
  def mod
    @register = @register % @stack.pop
  end
  
  def pop
    @register = @stack.pop
  end
  
  def print
    puts @register
  end
end # end Minilang class

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty @stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
