# 6) STACK MACHINE INTERPRETATION:
# Write a method that implements a miniature stack-and-register-based
# programming language that has the following commands:
# n     =>  Place a value n in the "register". Do not modify the stack.
# PUSH  =>  Push the register value on to the stack. Leave the value in the register.
# ADD   =>  Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB   =>  Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT  =>  Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV   =>  Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD   =>  Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP   =>  Remove the topmost item from the stack and place in register
# PRINT =>  Print the register value
# All operations are integer operations; programs will be supplied to your
# language method via a string passed in as an argument.  Your program may
# assume that all programs are correct programs; that is, they won't do
# anything like try to pop a non-existant value from the stack and they
# won't contain unknown tokens.  You should initialize the register to 0.
# --------------------------------------------------------------------------- #

def minilang(string)
  stack = []
  register = 0
  command_idx = 0
  
  string.split(" ").each do |command|
    case command
    when 'PUSH'                 then  stack.push(register)
    when 'ADD'                  then  register += stack.pop
    when 'SUB'                  then  register -= stack.pop
    when 'MULT'                 then  register *= stack.pop
    when 'DIV'                  then  register /= stack.pop
    when 'MOD'                  then  register %= stack.pop
    when 'POP'                  then  register = stack.pop
    when 'PRINT'                then  puts register
    else                              register = command.to_i
    end
  end
end

# EXAMPLES: ----------------------------------------------------------------- #
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)