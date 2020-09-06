Rails.application.routes.draw do
  devise_for :users
  resources :static_pages

  root 'static_pages#home'
  
  
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login', to: 'devise/sessions#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end

end
 