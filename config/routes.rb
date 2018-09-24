Rails.application.routes.draw do

  devise_for :users
  resources :receivers
  resources :conversations, only: [:index] do
    resources :messages, module: :conversations, only: [:index, :create, :destroy]
    resources :recurring_messages, controller: 'conversations/recurring_messages'
  end

  # Twilio webhook for inbound message
  post 'conversations/messages/reply', to: 'conversations/messages#reply'


  root 'receivers#index'

end
