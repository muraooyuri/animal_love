Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'animals/new'
  get 'animals/index'
  get 'animals/show'
  get 'animals/edit'
  root to: 'homus#top'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    get '/users', to: 'devise/registrations#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
