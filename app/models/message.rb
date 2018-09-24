class Message < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :conversation
  belongs_to :recurring_message, optional: true
end
