class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]

    @answer = case
              when @question == "I'm going to work"
                "Great!"
              when @question.include?("?")
                "Silly question, get dressed and go to work!"
              else
                "I don't care, get dressed and go to work!"
              end

  end

end
