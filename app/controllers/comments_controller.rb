class CommentsController < ApplicationController
  include ActionView::RecordIdentifier
  before_action :authenticate_user!
  before_action :set_comment, only: [:edit, :update, :destroy, :show]
  before_action :set_review

  def new
    @comment = Comment.find(params[:review_id])
  end

  def create
    @comment = @review.comments.new(comment_params)
    @comment.user = current_user

    respond_to do |format|
      
      if @comment.save
        ReviewMailer.with(comment: @comment, review: @review).new_response.deliver_now
        format.turbo_stream
        format.html { redirect_to review_path(@review), notice: "Comment created successfully" }
      else
        format.turbo_stream
        format.html { redirect_to review_path(@review), alert: "Comment could not be created." }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.turbo_stream
        format.html { redirect_to review_path(@review), notice: "Comment create successfully" }
      else
        format.turbo_stream
        format.html { redirect_to review_path(@review), alert: "Comment could not be created." }
      end
    end
  end

  def destroy
    @comment.destroy
    redirect_to reviews_path(@review)
  end


  private

    def set_review
      @review = Review.find(params[:review_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:comment, :review_id)
    end
end
