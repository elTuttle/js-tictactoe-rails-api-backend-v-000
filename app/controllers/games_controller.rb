class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    binding.pry
    @game = Game.create(state: params[:state])
  end

end
