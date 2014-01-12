class CommentsController < ApplicationController
  def create
    @dish = Dish.find(params[:dish_id])
    @comment = @dish.comments.build(comment_params)

    if @comment.save
      redirect_to dish_path(@dish)
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :author)
  end
end
