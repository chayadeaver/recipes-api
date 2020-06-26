Rails.application.routes.draw do
  resources :likes
  resources :comments
  namespace :api do
    namespace :v1 do
      resources :ingredients
    end
  end
  resources :ingredient_recipes
  namespace :api do
    namespace :v1 do
      resources :recipes do
        resources :ingredients, :comments, :likes
      end
    end
  end
  # want api to be domain.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :recipes, :comments, :likes
      end
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
