class USuitcasesController < ApplicationController
  before_action :set_u_suitcase, only: [:show, :edit, :update, :destroy]
    skip_before_action :verify_authenticity_token

  # GET /u_suitcases
  # GET /u_suitcases.json
  def index
    @u_suitcases = USuitcase.all
  end

  # GET /u_suitcases/1
  # GET /u_suitcases/1.json
  def show
  end

  # GET /u_suitcases/new
  def new
    @u_suitcase = USuitcase.new
  end

  # GET /u_suitcases/1/edit
  def edit
  end

  # POST /u_suitcases
  # POST /u_suitcases.json
  def create
    @u_suitcase = USuitcase.new(u_suitcase_params)

    respond_to do |format|
      if @u_suitcase.save
        format.html { redirect_to @u_suitcase, notice: 'U suitcase was successfully created.' }
        format.json { render :show, status: :created, location: @u_suitcase }
      else
        format.html { render :new }
        format.json { render json: @u_suitcase.errors, status: :unprocessable_entity }
      end
    end
  end

  def get_user_suitcases
    u_suitcases = USuitcase.where(user_id: u_suitcase_params[:user_id])

    respond_to do |format|
      format.json  {render json: {:suitcases => u_suitcases}}
    end
  end


  # PATCH/PUT /u_suitcases/1
  # PATCH/PUT /u_suitcases/1.json
  def update
    respond_to do |format|
      if @u_suitcase.update(u_suitcase_params)
        format.html { redirect_to @u_suitcase, notice: 'U suitcase was successfully updated.' }
        format.json { render :show, status: :ok, location: @u_suitcase }
      else
        format.html { render :edit }
        format.json { render json: @u_suitcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /u_suitcases/1
  # DELETE /u_suitcases/1.json
  def destroy
    @u_suitcase.destroy
    respond_to do |format|
      format.html { redirect_to u_suitcases_url, notice: 'U suitcase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_u_suitcase
      @u_suitcase = USuitcase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def u_suitcase_params
      params.require(:u_suitcase).permit(:user_id, :country_id, :weather)
    end
end
