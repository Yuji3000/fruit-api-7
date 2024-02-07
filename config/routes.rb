Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  post "/fruits", to: "fruits#index"
  get "/fruits/nutritional", to: "nutritional#index"
end
