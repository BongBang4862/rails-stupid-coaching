class PagesController < ApplicationController
  def ask
    
  end

  def answer
    @answer = coach_answer_enhanced(params[:question])
  end
  
  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    case your_message
    when "I would love to eat some pizza!"
      "I don't care, get dressed and go to work!"
    when "Can I eat some pizza?"
      "Silly question, get dressed and go to work!"
    else
      ""
    end
  end
  
  def coach_answer_enhanced(your_message)
    case your_message
    when "I WOULD LOVE SOME PIZZA!"
      "I can feel your motivation! I don't care, get dressed and go to work!"
    when "CAN I EAT SOME PIZZA?"
      "I can feel your motivation! Silly question, get dressed and go to work!"
    when "I AM GOING TO WORK RIGHT NOW!"
      "GREAT!!"
    else
      coach_answer(your_message)
    end
  end
end
