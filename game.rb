def correct_answer #(min_number,max_number)
  rand(1..100)
end

def print_intro
  puts "Welcome to the Number Game"
  puts "You have 5 chances to guess the correct number between 1 and 100."
end

print_intro

answer = correct_answer
#puts answer
guessed_answers = []
guess = 0
remaining_guesses = 5

while (guess != answer && remaining_guesses >= 1)
  puts "remaining_guess is currently equal to: #{remaining_guesses}"
  puts "Enter your guess:"
  guess = gets.chomp.to_i
  if guessed_answers.include?(guess)
  puts "You've just wasted a move"
  elsif guess > answer
  puts "Sorry, your guess is too high. Try again."
  elsif guess < answer
  puts "Sorry, your guess is too low. Try again."
  elsif guess == answer
  puts "Congratulations! You've guessed correctly!"
  end
  guessed_answers << guess
  remaining_guesses = remaining_guesses - 1
end

if remaining_guesses == 0
  puts "Sorry, you lose"
end








# def print_remaining_guesses(count)
#   if 5- count == 1
#     puts "This is your last guess"
#   else
#     puts "You have #{5 - count} guesses left"
#   end
# end

# def repeated_guess(guess)
#   if (gets.chomp)guess == guessed_answers
#     puts "You've just wasted a move"
#   end
# end

# def max_number
#   return 100.to_i
# end
#
# def min_number
#   return 1.to_i
# end
