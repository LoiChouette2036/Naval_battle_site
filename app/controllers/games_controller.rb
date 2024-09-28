class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
    @board = @game.board || @game.create_board
  end
end
