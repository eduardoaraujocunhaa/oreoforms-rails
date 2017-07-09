class AddKindOfQuestionToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :kind_of_question, foreign_key: true
  end
end
