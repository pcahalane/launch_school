puts "Welcome to the monthly payment loan calculator!"

loop do
  loan_amount = ""
  loop do
    puts "How many dollars is the loan?"
    loan_amount = gets.chomp

    if loan_amount.to_f > 0
      loan_amount = loan_amount.to_f
      break
    else
      puts "ERROR: #{loan_amount} is not a valid amount for the loan."
    end
  end

  annual_int = ""
  monthly_int = ""
  loop do
    puts "What is the Annual Perecentage Rate (APR)?"
    puts "(EXAMPLE: '6' for 6%, '3.2' for 3.2%)"
    annual_int = gets.chomp

    if annual_int.to_f > 0 # MUST REVISIT - 'CURRENTLY ACCEPTS 5.asdfasdf'
      monthly_int = annual_int.to_f / 100 / 12
      break
    else
      puts "ERROR: #{annual_int} is not a valid amount for the APR."
    end
  end

  duration_years = ""
  duration_months = ""
  loop do
    puts "How many years is the loan?"
    duration_years = gets.chomp

    if duration_years.to_f > 0
      duration_months = duration_years.to_f * 12
      break
    else
      puts "ERROR: #{duration_years} is not a valid entry."
    end
  end

  puts "Based on the following Input:"
  puts "LOAN AMOUNT: $#{loan_amount}"
  puts "INTEREST RATE: #{annual_int}% Annually / #{monthly_int}% Monthly"
  puts "LOAN LENGTH: #{duration_years} Years / #{duration_months} months"

  monthly_pay = loan_amount *
                (monthly_int /
                (1 - (1 + monthly_int)**(-duration_months)))
  puts "Monthly Payment: $#{monthly_pay.round(2)}"

  interest_only = monthly_pay * duration_months - loan_amount
  puts "Interest paid over loan duration: $#{interest_only.round(2)}"

  puts "Calculate monthly payment for another loan? ('Y'/'N')"
  answer = gets.chomp
  break unless answer.upcase.start_with?('Y')
end

puts "Goodbye!"
