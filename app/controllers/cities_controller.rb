class CitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_city, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!
  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)
      if @city.save
        redirect_to @city, notice: 'City was successfully created.' 
      else
        render :new 
      end
    end


  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
      if @city.update(city_params)
        redirect_to @city, notice: 'City was successfully updated.' 
      else
        render :edit
      end
    end


  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
      redirect_to cities_url, notice: 'City was successfully destroyed.'
    end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:id_city, :name)
    end
end


