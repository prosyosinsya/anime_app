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
    @anime = Anime.find(params[:id])
  end

  def update
    @anime = Anime.find(params[:id])
    @anime.update(anime_params)
    redirect_to root_path
  end

  def destroy
    anime = Anime.find(params[:id])
    anime.destroy
    redirect_to root_path
  end

  private
  
  def anime_params
    params.require(:anime).permit(:image, :title, :all_part, :current_part)
  end
end
