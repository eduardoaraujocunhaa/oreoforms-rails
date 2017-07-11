class BlockOfAnswer < ApplicationRecord
  belongs_to :answer, :inverse_of => :block_of_answers
end
