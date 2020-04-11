class UserChat < ApplicationRecord
    belongs_to :participant, foreign_key: :participant_id, class_name: "User"
    belongs_to :connected_chat, foreign_key: :chat_id, class_name: "Chat"
end
