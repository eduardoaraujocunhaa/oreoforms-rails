class Question < ApplicationRecord
  belongs_to :kind_of_question
  belongs_to :questionary
  has_many :block_of_questions
  has_many :answers
end
