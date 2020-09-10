Rails.application.routes.draw do
  resources :short_puts
  resources :bull_put_spreads
  devise_for :users

  root 'static_pages#home'

  get '/trades', to: 'static_pages#show_trades'
  get 'bps', to: 'bull_put_spreads#index'

  
  devise_scope :user do
    # register
    get 'signup', to: 'devise/registrations#new'
    # sessions
    get 'login', to: 'devise/sessions#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end

end
 