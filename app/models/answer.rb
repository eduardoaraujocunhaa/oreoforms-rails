class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :form
  has_many :block_of_answers
end
