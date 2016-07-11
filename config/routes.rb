Rails.application.routes.draw do
  get 'welcome/index'

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :posts
  root 'welcome#index'
end
