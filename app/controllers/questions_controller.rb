class QuestionsController < ApplicationController
  def ask
    @user_question = params[:user_question]
  end

  def answer
  end
end
