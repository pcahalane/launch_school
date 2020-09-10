# WALK-THROUGH: CALCULATOR
###############################################################################
# Build a command line calculator program that does the following:
# => asks for two numbers
# => asks for the type of operation to perform: add, subtract, multiply, divide
# => displays the result
###############################################################################
#   Use the Kernel.gets() method to retrieve user input, and use Kernel.puts()
# method to display output. Remember that kernel.gets() includes the newline,
# so you must call chomp() to remove it: Kernel.gets().chomp
###############################################################################
# PSEUDO-CODE:
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result
###############################################################################

# LANGUAGE SETTING OPTIONS: 'en', 'es'
LANGUAGE = 'en'

###############################################################################

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def op_to_msg(op)
  case op
  when '1'
    'adding'
  when '2'
    'subtracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end
end

def op_to_sym(op)
  case op
  when '1'
    '+'
  when '2'
    '-'
  when '3'
    'x'
  when '4'
    '/'
  end
end

prompt('welcome')

name = ""
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

puts MESSAGES[LANGUAGE][('hello')] + " #{name}!"

loop do # main loop
  number1 = ""
  loop do
    prompt('num1')
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt('error_number')
    end
  end

  number2 = ""
  loop do
    prompt('num2')
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt('error_number')
    end
  end

  prompt('operator_prompt')

  operator = ""
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('error_option')
    end
  end

  puts MESSAGES[LANGUAGE][op_to_msg(operator)] +
       " #{number1} #{op_to_sym(operator)} #{number2}..."

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  puts MESSAGES[LANGUAGE][('result')] + "#{result}."

  prompt('repeat?')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('end')
