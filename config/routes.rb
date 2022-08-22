Rails.application.routes.draw do
  
  resources :users
  resources :reviews
  resources :episodes
  resources :races
  get "/episodes/reviews/:id", to: "reviews#destroy"
  get "/episodes/:id/reviews", to: "episodes#episode_reviews"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
