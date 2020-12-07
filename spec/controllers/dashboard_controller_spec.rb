require 'rails_helper'

RSpec.describe DashboardController do
  describe 'GET #index' do
    render_views
    # let(:params) { { question: { asker: "Robert", question: "Which banana is the best?" } } }

    subject { get :index }

    describe "GET index" do
    it "displays Abraham Lincoln's responses" do
      expect(subject.body).to match("<h2>Number of responses from Abraham Lincoln: 0</h2>")
    #   expect{subject}.to change{Dashboard.count}.by 1
    #   expect(Dashboard.last).to have_attributes(
    #     asker: "Robert",
    #     question: "Which banana is the best?"
    #   )
    #   expect(response).to redirect_to question_path(Dashboard.last)
    end
  end
end
end