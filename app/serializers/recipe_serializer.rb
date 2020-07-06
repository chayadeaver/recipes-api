class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :description, :instructions, :user_id, :comments, :likes
  has_many :ingredients
  belongs_to :user

end
