class IngredientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :quantity, :unit
end
