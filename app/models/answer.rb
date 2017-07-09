class Answer < ApplicationRecord
  belongs_to :question
  has_many :block_of_answers
end
