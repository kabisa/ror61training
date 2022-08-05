class LikesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_likeable, only: [:create]

  def create
    @like = @likeable.likes.create!(like_params)
  end

  private

  def like_params
    params.require(:like).permit(:uuid)
  end
end
