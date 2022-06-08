class CommentsController < ApplicationController
  before_action :set_commentable, only: [:create]

  def create
    comment = @commentable.comments.build(comment_params)

    notice = if comment.save
               'Comment was successfully created.'
             else
               'Comment cannot be created.'
             end
    redirect_back fallback_location: root_url, notice: notice
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
