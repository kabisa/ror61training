class CommentsController < ApplicationController
  before_action :set_link, only: [:create]

  def create
    comment = @link.comments.build(comment_params)

    notice = if comment.save
               'Comment was successfully created.'
             else
               'Comment cannot be created.'
             end
    redirect_to link_url(@link), notice: notice
  end

  private

  def set_link
    @link = Link.find(params[:link_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
