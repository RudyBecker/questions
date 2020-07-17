class Tagging < ApplicationRecord
  belongs_to :response

  validates_presence_of :tag
end
