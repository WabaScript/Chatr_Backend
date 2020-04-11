class CreateUserChats < ActiveRecord::Migration[6.0]
  def change
    create_table :user_chats do |t|
      t.integer :chat_id
      t.integer :participant_id

      t.timestamps
    end
  end
end
