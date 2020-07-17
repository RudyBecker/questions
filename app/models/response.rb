class Response < ApplicationRecord
  belongs_to :question

  has_many :taggings

  validates_presence_of :response, :responder
end
