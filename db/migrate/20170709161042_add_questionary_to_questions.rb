class AddQuestionaryToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :questionary, foreign_key: true
  end
end
