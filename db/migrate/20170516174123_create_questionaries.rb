class CreateQuestionaries < ActiveRecord::Migration[5.1]
  def change
    create_table :questionaries do |t|
      t.string :url
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
