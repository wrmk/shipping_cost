Rails.application.routes.draw do
  root 'shipments#new'
  post '/' => 'shipments#create'
end
