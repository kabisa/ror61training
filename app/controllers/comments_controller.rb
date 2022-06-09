# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  before_action :set_commentable, only: [:create]

  def create
    @comment = @commentable.comments.build(comment_params)

    if @comment.save
      NotificationsMailer.with(comment: @comment).new_comment.deliver_later

      notice = 'Comment was successfully created.'
    else
      notice = 'Comment cannot be created.'
    end
    redirect_back fallback_location: root_url, notice: notice
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
