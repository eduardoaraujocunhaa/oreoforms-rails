class CreateBlockOfAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :block_of_answers do |t|
      t.string :text
      t.integer :numberofanswer
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end
