require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  score = 0
  bank_s = bank_score


  while asking_for_card?(score)
    score += pick_card
    puts state_of_the_game(score, bank_s)
  end

  outcome = game_outcome(score, bank_s)
  puts build_message_for(outcome)



end

def state_of_the_game(score, bank)

  # TODO: Returns custom message with player's score and bank's score
  "Your score is #{score}, bank is #{bank}!"

end

def asking_for_card?(score)

  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  if score < 21
    puts "Card ? (type 'Y' or 'yes' for a new card)"
    answer = gets.chomp
    if answer == "yes" or answer == "Y"
      return true
    elsif score == 21
      return false
    else
      return false
    end
  end
end

def build_message_for(outcome)

  #TODO: return specific message depending on the game outcome (= bank's score and user's score)

  score = 0
  bank_s = bank_score
  score += pick_card



  if outcome[1] > 21
    return "You are over 21... you loose."

  elsif outcome[1] == 21
    return "Black Jack!"

  elsif outcome[1] > outcome[0]
    return "You beat the bank! You win."

  else outcome[1] < outcome[0]
    return "Bank beats you! You loose."

  end
end
