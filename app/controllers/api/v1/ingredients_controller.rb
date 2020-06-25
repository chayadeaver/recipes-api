class Api::V1::IngredientsController < ApplicationController
    
    def index
        @ingredients = Ingredient.all 
        render json: IngredientSerializer.new(@ingredients).serialized_json, status: :ok
    end

    def show
        @ingredient = find_by(id: params[:id])
        render json: IngredientSerializer.new(@ingredient).serialized_json, status: :ok
    end
end
