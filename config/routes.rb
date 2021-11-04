Rails.application.routes.draw do
  # get 'shipments/new'
  root 'shipments#new'
  post '/' => 'shipments#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
