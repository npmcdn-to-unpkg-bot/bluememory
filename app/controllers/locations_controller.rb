class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    @article_id = params[:id]
    @article = Article.all
    @this_article = Article.find(@article_id)
    @good = 1
    
    @locations = Location.where(car_id: @this_article.car_id, trip_num: @this_article.trip_num)
    @locations1 = @locations.where(song: 1, movie: 1)
    @locations2 = @locations.where(song: 1, movie: 0)
    @locations3 = @locations.where(song: 0, movie: 1)
    
    @hash = Gmaps4rails.build_markers(@locations) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.description
      marker.json({ title: user.title })
    end
    
    @hash1 = Gmaps4rails.build_markers(@locations1) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.description
      marker.json({ title: user.title })
    end
    @hash2 = Gmaps4rails.build_markers(@locations2) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.description
      marker.json({ title: user.title })
    end
    @hash3 = Gmaps4rails.build_markers(@locations3) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.description
      marker.json({ title: user.title })
    end
    
    @score_path = '/home/trip_eval_process/' + @article_id.to_s 
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:latitude, :longitude, :address, :description, :title)
    end
end
