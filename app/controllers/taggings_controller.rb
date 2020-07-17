class TaggingsController < ApplicationController
  def create
    Tagging.create!(params.require(:tagging).permit(:response_id, :tag))

    redirect_to dashboard_path
  end
end
