class RecipesController < ApplicationController
    def index 
        @recipe = Recipe.all
    end 
    
    def new
    end
    
    def create
        @recipe = Recipe.new(params[recipe_params])
        
        @recipe.save 
        redirect_to @recipe
    end
end

private 
    def recipe_params
        params.require(:recipe).permit(:userName, :prime, :name, :prep, :complete, :ingredients, :directions, :secondary)
    end