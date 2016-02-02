class CommentsController < ApplicationController
  before_action :get_cosmetic

  def new
    @comment = @cosmetic.comments.new
  end

  def create
    @comment = @cosmetic.comments.new(comment_params)
    if @comment.save
      redirect_to cosmetic_path(@cosmetic)
    else
      render :new
    end
  end

  private

  def get_cosmetic
    @cosmetic = Cosmetic.find(params[:cosmetic_id])
  end

  def comment_params
    params.require(:comment).permit(:body, :user_id, :cosmetic_id)
  end
end
