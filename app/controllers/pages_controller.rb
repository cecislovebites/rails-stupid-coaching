class PagesController < ApplicationController

  def ask
  end

  def answer
    @questions = params[:questions]
    if @questions == 'I am going to work'
      @answers = 'Great!'
    elsif @questions.end_with?('?')
      @answers = 'Silly questions, get dressed and go to work!'
    else
      @answers = 'I do not care, get dressed and go to work!'
    end
  end
end
