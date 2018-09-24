class RecurringMessage < ApplicationRecord
  belongs_to :user
  belongs_to :conversation
  has_many :messages
end
