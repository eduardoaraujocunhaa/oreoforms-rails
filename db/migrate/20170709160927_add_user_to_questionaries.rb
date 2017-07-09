class AddUserToQuestionaries < ActiveRecord::Migration[5.1]
  def change
    add_reference :questionaries, :user, foreign_key: true
  end
end
