def play(input)
  cpu = rand(1..6)
  if input == cpu
    puts "You guessed the correct number!"
  else input != cpu
    puts "The computer guessed #{cpu}."
  end
end


def run_guessing_game
    input = ""
    while input
        puts "Guess a number between 1 and 6."
        input = gets
        if input.chomp.downcase == "exit"
          puts "Goodbye!"
          break
        else
          input = input.to_i
          play(input)
        end
    end
end