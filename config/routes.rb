Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :ingredients
  resources :ingredient_recipes
  namespace :api do
    namespace :v1 do
      resources :recipes
    end
  end
  # want api to be domain.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :recipes
      end
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
