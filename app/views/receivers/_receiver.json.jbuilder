json.extract! receiver, :id, :name, :phone_number, :user_id, :created_at, :updated_at
json.url receiver_url(receiver, format: :json)
