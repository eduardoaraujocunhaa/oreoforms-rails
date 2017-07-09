class CreateBlockOfAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :block_of_answers do |t|
      t.integer :n_option
      t.string :text_answer

      t.timestamps
    end
  end
end
