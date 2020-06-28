class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :recipes, :comments, :likes

  attribute :users_show_recipes do |user|
    user.recipes.map{|recipe| {
      recipe_name: recipe.name,
      recipe_image: recipe.image_url
    }}
  end

end
