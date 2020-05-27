class ChatSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :topic
  has_many :messages
end
