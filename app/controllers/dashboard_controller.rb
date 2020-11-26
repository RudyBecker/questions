class DashboardController < ApplicationController
  def index
    @lincoln_response_count = nil
    @banana_response_count = nil

    @recent_responses = Response.all.shuffle.take(2)
    @tagged_responses = nil
  end

  def react_dashboard
  end
end
