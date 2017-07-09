class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :enunciate
      t.integer :n_options

      t.timestamps
    end
  end
end
