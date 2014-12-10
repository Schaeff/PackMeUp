class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy, :travel]

  skip_before_action :verify_authenticity_token, only: [:travel,:create]


  # GET /countries
  # GET /countries.json
  def index
    @countries = Country.all
    render json: {countries: @countries}
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries
  # POST /countries.json
  def create
    @country = Country.new(country_params[:country])

    respond_to do |format|
      if @country.save
        format.html { redirect_to @country, notice: 'Country was successfully created.' }
        format.json { render :show, status: :created, location: @country }
      else
        format.html { render :new }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to @country, notice: 'Country was successfully updated.' }
        format.json { render :show, status: :ok, location: @country }
      else
        format.html { render :edit }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @country.destroy
    respond_to do |format|
      format.html { redirect_to countries_url, notice: 'Country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # POST /countries/1/travel.json
  def travel
    # On crée un nouvel objet travel à partir des paramètres reçus
    @travel = Travel.new(travel_params)
    # On précise que cet object Travel dépend du country concerné
    #@travel.country = @country

    respond_to do |format|
      if @travel.save
        format.json
      else
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_params
      params.require(:country).permit(:name, :flag, :weatherLink)
    end

        # On ajoute les paramètres qu'on va envoyer avec le booking
    def travel_params
      params.require(:travel).permit(:user_id, :country_id)
    end
end
