Rails.application.routes.draw do
  # root "demos#index"
  

  get '/demos', to: 'demos#index'
  get '/demos/new', to: 'demos#new'
  get '/demos/:id', to: 'demos#show', as: :demo
  get '/demos/:id/edit', to: 'demos#edit', as: :edit_demo
  patch '/demos/:id', to: 'demos#update'
  delete '/demos/:id', to: 'demos#destroy'
  post  '/demos', to: 'demos#create'
 
  resources :demos
  
end
