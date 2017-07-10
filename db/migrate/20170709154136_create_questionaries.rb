class CreateQuestionaries < ActiveRecord::Migration[5.1]
  def change
    create_table :questionaries do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
    add_index :questionaries, :url, unique: true
  end
end
