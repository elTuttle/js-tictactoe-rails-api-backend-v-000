class GamesController < ApplicationController
  # Add your GamesController code here
  def new
    @game = Game.new(state: [" "," "," "," "," "," "," "," "," "])
  end

  def create

  end

end
