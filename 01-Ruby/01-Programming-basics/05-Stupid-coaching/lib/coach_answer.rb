def coach_answer(your_message)
  # TODO: return coach answer to your_message

  if your_message.split(//).last(2).include? "?"
    answer = "Silly question, get dressed and go to work !"
  elsif your_message == "I am going to work right now SIR !"
    answer = ""
  else
    answer = "I don't care son, get dressed and go to work !"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours !
  answer = coach_answer(your_message)
  if your_message.upcase == your_message
    "I can feel your motivation son ! " + answer
  else puts answer
  end
end

