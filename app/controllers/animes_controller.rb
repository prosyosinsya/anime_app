class AnimesController < ApplicationController
  def new
    @anime = Anime.new
  end

  def create
    @anime = Anime.new(anime_params)
    @anime.user_id = current_user.id
    if @anime.save
      redirect_to root_path, notice:"新規作成しました"
    else
      redirect_to new_anime_path, alert:"新規作成に失敗しました"
    end
  end

  def edit
    @anime = Anime.find(params[:id])
  end

  def update
    @anime = Anime.find(params[:id])
    if @anime.update(anime_params)
      redirect_to root_path, notice:"更新しました"
    else
      redirect_to edit_anime_path(@anime), alert:"更新に失敗しました"
    end
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
