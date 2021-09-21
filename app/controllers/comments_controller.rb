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
  def edit
    @comment = @car.comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'Editing comment'
      format.js { render :edit }
    end
  end
  def update
    @comment = @car.comments.find(params[:id])
      respond_to do |format|
        if @comment.update(comment_params)
          flash.now[:notice] = 'Comment edited'
          format.js { render :index }
        else
          flash.now[:notice] = 'Failed to edit comment'
          format.js { render :edit_error }
        end
      end
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      flash.now[:notice] = 'Comment deleted'
      format.js { render :index }
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:car_id, :comment)
  end
  def set_car
    @car = Car.find(params[:car_id])
  end
end
