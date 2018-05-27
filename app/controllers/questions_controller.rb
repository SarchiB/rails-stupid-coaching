class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # capture the input from user
    @question = params[:ask]
    #provide the right anwser given the coach logic
    # if it include a ? do something
    # if something else do something else
    # feed anwser as an instance variable to be accessible in view
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
