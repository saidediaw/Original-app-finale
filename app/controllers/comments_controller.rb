class CommentsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @comment = @car.comments.build(comment_params)
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to car_path(@car), notice: 'Comment not saved' }
      end
    end
  end
  def destroy
    @comment.destroy
    redirect_to car_path(@car)
  end
  private

  def comment_params
    params.require(:comment).permit(:car_id, :comment)
  end
end
