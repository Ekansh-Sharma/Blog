Rails.application.routes.draw do
  root 'home#index'
  post 'home/send_mail' => 'home#send_mail'
end
