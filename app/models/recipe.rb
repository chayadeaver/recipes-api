class Recipe < ApplicationRecord
    belongs_to :user, optional: true
    has_many :ingredient_recipes, dependent: :destroy
    has_many :ingredients, through: :ingredient_recipes
    validates :name, :image_url, :description, :instructions, presence: true

end
