Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'welcome/index'

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :posts
  root 'welcome#index'
end
