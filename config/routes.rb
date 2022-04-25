Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #get "/weathers", to: "weathers#index"
  # Defines the root path route ("/")
  root "weathers#index"
end
