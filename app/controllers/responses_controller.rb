class ResponsesController < ApplicationController
  def new
    @response = question.responses.new
  end

  def create
    @response = question.responses.new(params.require(:response).permit(:responder, :response))

    if @response.save
      redirect_to question
    else
      render 'new'
    end
  end

  private

  def question
    Question.find(params[:question_id])
  end
end
