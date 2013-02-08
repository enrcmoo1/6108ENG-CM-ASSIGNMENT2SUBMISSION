Osc::Application.routes.draw do

  resources :announcements


  root :to => 'welcome#index'
  

  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/sessions'
  get 'welcome/social'
  get 'welcome/faq'
  get 'welcome/holidays'
  get 'welcome/racing'
  get 'welcome/events'
  get 'welcome/announcements'


  resources :events
  resources :announcements
end
