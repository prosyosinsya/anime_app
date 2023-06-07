class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @animes = Anime.paginate(page: params[:page], per_page: 5)
  end
end
