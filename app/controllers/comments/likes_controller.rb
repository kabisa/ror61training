module Comments
  class LikesController < LikesController
    private

    def set_likeable
      @likeable = Comment.find(params[:comment_id])
    end
  end
end
