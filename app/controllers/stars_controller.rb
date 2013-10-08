class StarsController < ApplicationController
	before_action :set_star, only: [:show]

	def show
		@star = Star.find(params[:id])
	end

	private

  # Use callbacks to share common setup or constraints between actions.
  def set_star
    @star = Star.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def star_params
    # params[:star].permit(:title, :poster_url, :trailer_url, :description)
  end
end
