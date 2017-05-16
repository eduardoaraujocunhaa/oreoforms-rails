class Questionary < ApplicationRecord
  belongs_to :user
  has_many :questions
end
