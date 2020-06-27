Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :recipes, :comments, :likes
      end
      resources :ingredients
      resources :recipes do
        resources :ingredients, :comments, :likes
      end
      resources :likes
      resources :comments
      resources :ingredient_recipes
    end
  end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
