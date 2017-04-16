class HomesController < ApplicationController
  before_action :authenticate!, except: [:index]

  # GET /homes
  def index
    @homes = Home.page(params[:page]).per(6)
    # if params[:search]
    #   @homes_search = Home.search(params[:search])
    # else
    #   index
    # end
  end

  # GET /homes/1
  def show
    @home = Home.find(params[:id])
  end

  # GET /homes/new
  def new
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
    @home = Home.find(params[:id])
  end

  def search
    @homes_search = Home.search(params[:search])
    if @homes_search
      render :search
    else
      redirect_to @homes, notice: 'Your search did not return any results'
    end
  end

  # POST /homes
  def create
    @home = Home.new(home_params)

    if @home.save
      redirect_to @home, notice: 'Home was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /homes/1
  def update
    @home = Home.find(params[:id])
    if @home.update(home_params)
      redirect_to @home, notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /homes/1
  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to homes_url, notice: 'Home was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def home_params
    params.require(:home).permit(:address, :city, :state, :zip, :year_built, :bedrooms, :bathrooms, :square_footage, :price, :description, :parking, :lot_size, :hoa, :hoa_fee, :floors, :created_by, :image)
  end
end
