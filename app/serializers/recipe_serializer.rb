class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :description, :instructions, :comments, :likes

  attribute :user do |recipe|
    {
      id: recipe.user.id,
      name: recipe.user.name
    }
  end

  attribute :ingredients do |recipe|
    recipe.ingredients.map do |ingredient|
      {
        id: ingredient.id,
        name: ingredient.name,
        quantity: ingredient.quantity,
        unit: ingredient.unit
      }
    end
  end
end
