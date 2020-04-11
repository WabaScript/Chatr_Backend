class Chat < ApplicationRecord
    has_many :connected_chats, foreign_key: :chat_id
    has_many :participants, through: :connected_chats
    has_many :messages
    belongs_to :owner, foreign_key: :owner_id, class_name: "User"

end
