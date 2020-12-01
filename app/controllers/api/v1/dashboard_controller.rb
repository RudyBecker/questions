module Api::V1
  class DashboardController < ApplicationController
    def index
      @lincoln_response_count = nil
      @banana_response_count = nil
  
      @recent_responses = Response.all.shuffle.take(2)
      @tagged_responses = nil

      render json: @recent_responses
    end
  end
end
