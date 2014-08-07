Rails.application.routes.draw do
  get 'welcome/portfolio'
  get 'welcome/about'
  get 'welcome/contact'

  root 'welcome#home'


end
