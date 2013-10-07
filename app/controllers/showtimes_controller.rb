class ShowtimesController < ApplicationController
  def create
    
  end

  private
  def showtimes_params
    params.require(:showtime).permit(:location, :time)
  end
end
