# frozen_string_literal: true

# root :to => "cocktails#index"

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doses, only: [:destroy]
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
  end
  
end
