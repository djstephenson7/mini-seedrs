# frozen_string_literal: true

Rails.application.routes.draw do
  root 'api/v1/campaigns#index'
  namespace :api do
    namespace :v1 do
      resources :campaigns
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
