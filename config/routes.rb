Rails.application.routes.draw do

  get 'portfolio', to: 'welcome#portfolio'
  get 'about', to: 'welcome#about'
  get 'contact', to: 'welcome#contact'
  get 'shopify', to: 'welcome#shopify'

  root 'welcome#about'

  #resources :people
  resources :organizations


end
