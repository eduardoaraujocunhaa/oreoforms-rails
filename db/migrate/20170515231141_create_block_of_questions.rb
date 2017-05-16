class CreateBlockOfQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :block_of_questions do |t|
      t.string :text
      t.integer :numberofoption
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
