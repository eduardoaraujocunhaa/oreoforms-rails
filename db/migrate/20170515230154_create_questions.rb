class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :type
      t.integer :numberofoptions
      t.string :title
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
