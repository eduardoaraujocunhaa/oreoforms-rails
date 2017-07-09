class CreateBlockOfQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :block_of_questions do |t|
      t.string :option

      t.timestamps
    end
  end
end
