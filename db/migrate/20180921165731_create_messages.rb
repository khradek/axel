class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :to
      t.string :from
      t.string :status
      t.string :body
      t.string :message_sid
      t.string :account_sid
      t.string :messaging_service_sid
      t.string :direction
      t.datetime :send_at
      t.datetime :sent_at
      t.string :frequency
      t.boolean :recurring
      t.references :user, foreign_key: true
      t.references :conversation, foreign_key: true
      t.references :recurring_message, foreign_key: true

      t.timestamps
    end
  end
end
