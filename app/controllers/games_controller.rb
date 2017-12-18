class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    binding.pry
    @game = Game.create(state: params[:state])
    game_path @game
  end

  def show
    
  end

end
