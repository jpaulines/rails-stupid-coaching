class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # @answer = ANSWER.select { |id, r| r[:category] == @category }
    # raise
    # TODO: return coach answer to your_message

    if ['I am going to work right now!', 'I AM GOING TO WORK RIGHT NOW!'].include? params[:input_question]
      @answer = ''
    elsif !params[:input_question].include? '?'
      @answer = "I don't care, get dressed and go to work!"
    elsif params[:input_question].include? '?'
      @answer = "Silly question, get dressed and go to work!"
    end
  end
end
