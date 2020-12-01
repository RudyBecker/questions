module Api::V1
  class ResponsesController < ApplicationController
    def index
      @recent_responses = Response.all.shuffle.take(2)

      render json: @recent_responses
    end
  end
end
