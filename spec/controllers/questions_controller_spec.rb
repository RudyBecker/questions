require 'rails_helper'

RSpec.describe QuestionsController do
  describe 'POST #create' do
    let(:params) { { question: { asker: "Robert", question: "Which banana is the best?" } } }

    subject { post :create, params: params }

    it 'creates a question and redirects' do
      expect{subject}.to change{Question.count}.by 1
      expect(Question.last).to have_attributes(
        asker: "Robert",
        question: "Which banana is the best?"
      )
      expect(response).to redirect_to question_path(Question.last)
    end
  end
end
