class SuitcasesController < ApplicationController
	skip_before_action :verify_authenticity_token

	def find_suitcase
		country = Country.find_by name: suitcase_params[:country]
		weather = suitcase_params[:weather]
		user = User.find_by id: suitcase_params[:user_id]
		@suitcase = Suitcase.find_by weather: weather, country: country
		#initialize a user suitcase with default suitcase
		USuitcase.create({user: user, country: country, weather: weather})


		respond_to do |format|
			format.json  {render json: {:suitcase => @suitcase.items}}
		end
	end

	def suitcase_params
      params.require(:suitcase).permit(:user_id, :country, :weather)
    end
end
