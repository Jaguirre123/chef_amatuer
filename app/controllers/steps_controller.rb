class StepsController < ApplicationController
    def create
        @step = Step.new(params.require(:step).permit(:content))
        @step.recipe_id = params[:recipe_id]
        @step.save
        redirect_to recipe_path(params[:recipe_id])
    end

    def destroy
        @step = Step.find(params[:id])
        recipe = @step.recipe
        @step.destroy
        redirect_to recipe_path(recipe)
    end

    def edit
        @step = Step.find(params[:id])
    end
    
    def update 
        @step = Step.find(params[:id])
        @step.update_attributes(params.require(:step).permit(:content))
        redirect_to recipe_path(@step.recipe)
    end
end