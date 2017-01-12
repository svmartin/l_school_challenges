def minilang(inputs)
  register = 0
  stack = []
  
  inputs.split.each do |input|
    case
    when input.to_i.to_s == input then register = input.to_i
    when input == 'PRINT' then puts register
    when input == 'POP'   then register = stack.pop
    when input == 'MOD'   then register = register % stack.pop
    when input == 'DIV'   then register = register / stack.pop
    when input == 'MULT'  then register = register * stack.pop
    when input == 'SUB'   then register = register - stack.pop
    when input == 'ADD'   then register = register + stack.pop
    when input == 'PUSH'  then stack.push(register)
    else         puts "we have a problem"
    end
  end
end

# minilang('PRINT')

minilang('5 PUSH 3 MULT PRINT') # 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT') # 5 # 3 # 8

minilang('5 PUSH POP PRINT') # 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT') # 5 # 10 # 4 # 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ') # 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ') # 12

minilang('-3 PUSH 5 SUB PRINT') # 8

minilang('6 PUSH') # (nothing printed; no PRINT commands)
