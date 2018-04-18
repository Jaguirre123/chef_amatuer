class RecipesController < ApplicationController

    def new 
        @recipe = Recipe.new
    end

    def show 
        @recipe = Recipe.find(params[:id])
        @step = Step.new
    end

    def create
        @recipe = Recipe.new(params.require(:recipe).permit(:title, :content, :category, :image))
        @recipe.user = current_user
         if @recipe.save
            redirect_to recipe_path(@recipe)
         else
            render :new
         end
    end


    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to user_path(current_user)
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end
    
    def update 
        @recipe = Recipe.find(params[:id])
        @recipe.update_attributes(params.require(:recipe).permit(:title))
        redirect_to user_path(current_user)
    end
end