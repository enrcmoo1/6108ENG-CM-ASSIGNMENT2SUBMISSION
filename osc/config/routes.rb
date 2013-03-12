Osc::Application.routes.draw do
  resources :statuses


  root :to => 'welcome#index'

  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/sessions'
  get 'welcome/social'
  get 'welcome/faq'
  get 'welcome/holidays'
  get 'welcome/racing'

  resources :announcements
  resources :events
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy]

  match 'login' => 'author_sessions#new'
  match 'logout' => 'author_sessions#destroy'
end
