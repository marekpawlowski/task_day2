Rails.application.routes.draw do
  resources :high_scores
  
  # Sidekiq dashboard
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  # crono dashboard
  require 'crono/web'
  mount Crono::Web => "/crono"

  # Sidekiq trigger
  get "/day2" => "day2#index", as: "day2_index"
  get "/day2/report" => "day2#report", as: "day2_report"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
