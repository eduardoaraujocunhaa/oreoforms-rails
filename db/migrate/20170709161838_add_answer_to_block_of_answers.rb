class AddAnswerToBlockOfAnswers < ActiveRecord::Migration[5.1]
  def change
    add_reference :block_of_answers, :answer, foreign_key: true
  end
end
