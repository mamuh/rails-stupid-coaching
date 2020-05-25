class QuestionsController < ApplicationController
  def ask
    @user_question = params[:user_question]
    answer
  end

  def answer
    @answer = ""
    if @user_question
      if @user_question.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      elsif @user_question == "I am going to work"
        @answer = "Great!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
