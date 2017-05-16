class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.string :type
      t.string :text
      t.integer :numberofanswers

      t.timestamps
    end
  end
end