Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'signin', to: 'devise/sessions#new'
  end

end
 