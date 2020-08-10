class QuestionsController < ApplicationController
  def ask
    @questions = ['I am going to work', '?']
    if params[:question]
      @questions = @questions.select { |question| question.start_with?(params[:question]) }
    end
  end

  def answer
    answers = ['Great!', 'Silly question, get dressed and go to work!', 'I don t care, get dressed and go to work!']
    if params[:question] == 'I am going to work'
      @answers = answers[0]
    elsif params[:question].include?('?')
      @answers = answers[1]
    else
      @answers = answers[2]
    end
  end
end
