VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_MATCH = {
  rock: [:scissors, :lizard],
  paper: [:rock, :spock],
  scissors: [:paper, :lizard],
  lizard: [:paper, :spock],
  spock: [:scissors, :rock]
}

SHORT_CHOICES = {
  "r" => :rock,
  "p" => :paper,
  "sc" => :scissors,
  "l" => :lizard,
  "sp" => :spock
}

scoreboard = {
  player: 0,
  computer: 0
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_MATCH[first.to_sym].include?(second.to_sym)
end

def increment_score(player, computer, score)
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  end
end

def display_results(player, computer, score)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
  prompt("PLAYER: #{score[:player]} | COMPUTER: #{score[:computer]}")
end

def score_wipe(array)
  array[:player] = 0
  array [:computer] = 0
end

def grand_winner?(score)
  if score.value?(5)
    declare_winner(score)
    score[:player] = 0
    score[:computer] = 0
  end
end

def declare_winner(score)
  prompt("#{score.key(5).upcase} has won the match with 5 wins!")
end

loop do # MAIN GAME LOOP
  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().downcase

    if VALID_CHOICES.include?(choice)
      break
    elsif SHORT_CHOICES.key?(choice)
      choice = SHORT_CHOICES[choice]
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  increment_score(choice, computer_choice, scoreboard)

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  display_results(choice, computer_choice, scoreboard)
  grand_winner?(scoreboard)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing; goodbye!")
