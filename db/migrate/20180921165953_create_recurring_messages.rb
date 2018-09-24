class CreateRecurringMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :recurring_messages do |t|
      t.datetime :end_date
      t.datetime :start_date
      t.string :frequency
      t.string :body
      t.string :to
      t.references :user, foreign_key: true
      t.references :conversation, foreign_key: true

      t.timestamps
    end
  end
end
