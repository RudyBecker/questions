class DashboardController < ApplicationController
  def index
    @banana_response_count = nil
    @lincoln_response_count = nil

    @recent_responses = Response.all.shuffle.take(2)
  end
end
