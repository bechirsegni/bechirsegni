Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'about' ,     to: 'home#about'
  get 'projects' ,  to: 'home#projects'
  get 'blog' ,      to: 'home#blog'
  get 'contact' ,   to: 'home#contact'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
