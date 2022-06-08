module Links
  class CommentsController < CommentsController
    private

    def set_commentable
      @commentable = Link.find(params[:link_id])
    end
  end
end
