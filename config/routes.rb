Rails.application.routes.draw do
  resources :advertisments
  resources :posts

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
