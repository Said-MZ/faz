Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "/", to: "dashboard#index"
  get "/card/:id/front", to: "cards#front", as: :card_front
  get "/card/:id/back", to: "cards#back", as: :card_back
end
