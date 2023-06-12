class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    @coach = "Great"
    if @answer[-1] == '?'
      @coach = "Silly question, get dressed and go to work!"
    elsif @answer == "I am going to work right now!"
      @coach = "Great"
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
