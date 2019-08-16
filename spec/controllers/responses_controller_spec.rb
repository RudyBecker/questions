require 'rails_helper'

RSpec.describe ResponsesController do
  describe 'POST #create' do
    let(:question) { create(:question) }
    let(:params) do
      {
        question_id: question.id,
        response: { responder: "Fred", response: "Cavendish" }
      }
    end

    subject { post :create, params: params }

    it 'creates a response and redirects' do
      expect{subject}.to change{Response.count}.by 1
      expect(Response.last).to have_attributes(
        responder: "Fred",
        response: "Cavendish"
      )
      expect(response).to redirect_to question_path(question)
    end
  end
end
