class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    #binding.pry
    @game = Game.create(state: params[:state])
    redirect_to game_path @game
  end

  def show
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
  end

end
