class User < ApplicationRecord
    has_many :user_chats, foreign_key: :participant_id
    has_many :connected_chats, through: :user_chat
    has_many :messages
    has_many :chats, foreign_key: :owner_id

    validates :username, uniqueness: true
    
    has_secure_password

end
