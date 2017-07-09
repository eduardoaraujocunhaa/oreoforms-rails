class CreateKindOfQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :kind_of_questions do |t|
      t.string :kind_name

      t.timestamps
    end
  end
end
