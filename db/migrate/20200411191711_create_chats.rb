class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.integer :owner_id
      t.string :topic

      t.timestamps
    end
  end
end
