class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @animes = Anime.all
  end
end
