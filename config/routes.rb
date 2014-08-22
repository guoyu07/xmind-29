Rails.application.routes.draw do
  get 'portfolio', to: 'welcome#portfolio', as: 'welcome_portfolio'
  get 'about', to: 'welcome#about', as: 'welcome_about'
  get 'contact', to: 'welcome#contact', as: 'welcome_contact'
  get 'shopify', to: 'welcome#shopify', as: 'welcome_shopify'

  root 'welcome#home'


end
