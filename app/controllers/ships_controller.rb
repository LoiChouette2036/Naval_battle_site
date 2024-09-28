class ShipsController < ApplicationController
  # To list the ships
  def index
    @ships = Ship.all # Retrieve all predefined ships
  end

  # To place the selected ship on the board
  def place
    @ship = Ship.find(params[:id])
    coordinates = params[:coordinates]  # e.g., "A1"
    orientation = params[:orientation]  # "horizontal" or "vertical"

    # Logic to place the ship on the board based on coordinates and orientation
  end


  private

  def ship_params
    params.require(:ship).permit(:name, :length, :orientation, :coordinates)
  end
end
