def guess_number
  remaining_guesses = 2
  random = rand(10) + 1

  begin
    print "Guess a number between 1 and 10: "
    guess = gets.chomp.to_i
    raise ArgumentError.new("This is the wrong value.") if guess != random

  rescue ArgumentError => e
    exit if remaining_guesses == 0
    hint = guess > random ? "lower" : "higher"
    puts
    puts "#{e.message} Guess #{hint}."
    puts "You have #{remaining_guesses} guesses remaining."
    remaining_guesses -= 1
    retry
  end

  puts "That's correct!"
end

guess_number()
