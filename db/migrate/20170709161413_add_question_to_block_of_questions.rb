class AddQuestionToBlockOfQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :block_of_questions, :question, foreign_key: true
  end
end
