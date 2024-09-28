class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    @board = @game.board || @game.create_board
  end
end
