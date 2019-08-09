class Question < ApplicationRecord
  has_many :responses

  validates :asker, presence: true
  validates :question, presence: true
end
