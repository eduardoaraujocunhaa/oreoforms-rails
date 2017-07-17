class Answer < ApplicationRecord
  attr_accessor :answers
  belongs_to :question
  has_many :block_of_answers, :inverse_of => :answer, dependent: :destroy
  accepts_nested_attributes_for :block_of_answers
end
