class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :comments, :likes
  has_many :recipes

  # attribute :recipes do |user|
  #   user.recipes.map{|recipe| {
  #     id: recipe.id,
  #     name: recipe.name,
  #     image: recipe.image_url,
  #     description: recipe.description,
  #     instructions: recipe.instructions

  #   }}
  # end

end
