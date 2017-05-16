class Question < ApplicationRecord
  belongs_to :form
  has_many :block_of_questions
end
