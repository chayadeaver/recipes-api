Rails.application.routes.draw do
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
