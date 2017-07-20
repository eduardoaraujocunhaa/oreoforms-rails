class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :kind_of_question
  has_many :block_of_answers, :inverse_of => :answer, dependent: :destroy
  accepts_nested_attributes_for :block_of_answers
end
