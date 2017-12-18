class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
  end

  def create
    #binding.pry
    @game = Game.create(state: params[:state])
    redirect_to game_path @game
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @game }
    end
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
    redirect_to game_path @game
  end

end
