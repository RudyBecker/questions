class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params.require(:question).permit(:asker, :question))

    if @question.save
    else
      render 'new'
    end
  end
end
