class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :id_interviewed
      t.integer :n_options

      t.timestamps
    end
  end
end
