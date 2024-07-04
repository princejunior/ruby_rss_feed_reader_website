Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # Define nested resources: each feed can have multiple entries
  resources :feeds do
    resources :entries, only: [:index, :show]
  end
  # Set the root path of the application to the index action of the Feeds controller
  root "feeds#index"
end

