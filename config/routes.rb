Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  post "/api/v1/signup", to: "api/v1/users#create"

  delete "/api/v1/logout", to: "api/v1/sessions#destroy"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"

  get "/api/v1/current_user_recipes", to: "api/v1/recipes#current_user_recipes"

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :recipes, :comments, :likes do
          resources :ingredients
        end
      end
      resources :ingredients
      resources :recipes do
        resources :ingredients, :comments, :likes
      end
      resources :likes
      resources :comments
        end
  end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
