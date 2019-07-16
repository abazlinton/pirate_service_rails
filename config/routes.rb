Rails.application.routes.draw do
  resources :raids
  resources :pirates_raids
  resources :models
  resources :pirates do
    resources :ships
  end
  resources :ships do
    resources :pirates
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
