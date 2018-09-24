class SendSmsJob < ApplicationJob
  
  rescue_from ActiveJob::DeserializationError do |exception|
    exception.original_exception == ActiveRecord::RecordNotFound
  end

  queue_as :default

  def perform(message)

    # Send the SMS & update the message status
    SMS.new(message.to).send message.body
    message.update_columns(status: "sent", sent_at: Time.now)

    #check if message is part of recurring series and if true run method that sets next message
    if message.recurring? 
      Message.create_next_message(message.user_id, message.recurring_message_id, message.conversation_id, message.to, message.body, message.send_at, message.frequency)
    end
  end
  
end
