class AnimesController < ApplicationController
  def new
    @anime = Anime.new
  end

  def create
    @anime = Anime.new(anime_params)
    @anime.user_id = current_user.id
    @anime.save
    redirect_to root_path
  end

  def edit
  end

  private
  def anime_params
    params.require(:anime).permit(:title, :all_part, :current_part)
  end
end