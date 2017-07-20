class KindOfQuestion < ApplicationRecord
  has_many :questions
  has_many :answers
end
