class SuitcasesController < ApplicationController
	skip_before_action :verify_authenticity_token

	def request
		#country = Country.find_by name: suitcase_params[:country]
		#weather = suitcase_params[:weather]
		#@suitcase = Suitcase.find_by weather: weather

		respond_to  {render :show, location: @suitcase}
	end

	def suitcase_params
      params.require(:suitcase).permit(:country, :weather)
    end
end
