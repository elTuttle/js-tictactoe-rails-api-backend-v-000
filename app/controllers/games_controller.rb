class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    binding.pry
    @game = Game.create(s)
  end

end
