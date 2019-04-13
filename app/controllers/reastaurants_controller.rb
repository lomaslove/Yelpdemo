class ReastaurantsController < ApplicationController
  before_action :set_reastaurant, only: [:show, :edit, :update, :destroy]

  # GET /reastaurants
  # GET /reastaurants.json
  def index
    @reastaurants = Reastaurant.all
  end

  # GET /reastaurants/1
  # GET /reastaurants/1.json
  def show
  end

  # GET /reastaurants/new
  def new
    @reastaurant = Reastaurant.new
  end

  # GET /reastaurants/1/edit
  def edit
  end

  # POST /reastaurants
  # POST /reastaurants.json
  def create
    @reastaurant = Reastaurant.new(reastaurant_params)

    respond_to do |format|
      if @reastaurant.save
        format.html { redirect_to @reastaurant, notice: 'Reastaurant was successfully created.' }
        format.json { render :show, status: :created, location: @reastaurant }
      else
        format.html { render :new }
        format.json { render json: @reastaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reastaurants/1
  # PATCH/PUT /reastaurants/1.json
  def update
    respond_to do |format|
      if @reastaurant.update(reastaurant_params)
        format.html { redirect_to @reastaurant, notice: 'Reastaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @reastaurant }
      else
        format.html { render :edit }
        format.json { render json: @reastaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reastaurants/1
  # DELETE /reastaurants/1.json
  def destroy
    @reastaurant.destroy
    respond_to do |format|
      format.html { redirect_to reastaurants_url, notice: 'Reastaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reastaurant
      @reastaurant = Reastaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reastaurant_params
      params.require(:reastaurant).permit(:name, :adress, :phone, :website, :image)
    end
end
