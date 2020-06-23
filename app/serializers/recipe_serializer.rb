class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :description, :instructions, :ingredients
end
