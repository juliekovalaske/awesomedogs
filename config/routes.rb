Rails.application.routes.draw do
  root 'dogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dogs
end
