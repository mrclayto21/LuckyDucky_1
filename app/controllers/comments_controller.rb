class CommentsController < ApplicationController
    def create
        @recipe = Recipe.find(params[:recipe_id])
        @comment = @recipe.comments.create(comment_params)
        redirect_to recipe_path(@recipe)
    end
    
    # please pay attention to the path and controller names
    # if you copy and paste change the controller and path names
    def destroy
        @recipe = Recipe.find(params[:recipe_id])
        @comment = @recipe.comments.find(params[:id])
        @comment.destroy
        redirect_to recipe_path(@recipe)
    end
    
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
