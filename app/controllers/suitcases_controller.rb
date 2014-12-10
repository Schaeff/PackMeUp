class SuitcasesController < ApplicationController
	skip_before_action :verify_authenticity_token

	def find_suitcase
		country = Country.find_by name: suitcase_params[:country]
		weather = suitcase_params[:weather]
		@suitcase = Suitcase.find_by weather: weather, country: country


		respond_to do |format|
			format.json  {render json: @suitcase.items}
		end
	end

	def suitcase_params
      params.require(:suitcase).permit(:country, :weather)
    end
end
