class Conversation < ApplicationRecord
  belongs_to :user
  belongs_to :receiver

  has_many :messages
  has_many :recurring_messages
end
