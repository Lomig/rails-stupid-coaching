# frozen_string_literal: true

## Questions Controller
class QuestionsController < ApplicationController
  def index
    redirect_to ask_path
  end

  def ask; end

  def answer
    @question = params[:question]
    @answer = coach_response(@question)
  end

  private

  def coach_response(question)
    return "Great!" if @question.start_with? "I am going to work"

    if question.include? "?"
      return "Silly question, get dressed and go to work!"
    end

    "I don't care, get dressed and go to work!"
  end
end
