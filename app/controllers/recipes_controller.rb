class RecipesController < ApplicationController

    def new 
        @recipe = Recipe.new
    end

    def show 
        @recipe = Recipe.find(params[:id])
    end

    def create
        @recipe = Recipe.new(params.require(:recipe).permit(:title, :content, :category, :image))
        @recipe.user = current_user
         if @recipe.save
            redirect_to recipes_path
         else
            render :new
         end
    end

    def show
        @recipes = Recipe.find(params[:id])
    end
end