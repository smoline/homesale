class HomesController < ApplicationController
  before_action :authenticate!, except: [:index, :search, :show]

  # GET /homes
  def index
    @homes = Home.page(params[:page]).per(6)
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

    unless @home.can_this_user_edit?(current_user)
      send_them_back_with_error
      return
    end
  end

  def search
    @homes_search = Home.search(params[:search])
  end

  # POST /homes
  def create
    @home = Home.new(home_params)
    @home.created_by = current_user

    if @home.save
      redirect_to @home, notice: 'Home was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /homes/1
  def update
    @home = Home.find(params[:id])

    unless @home.can_this_user_edit?(current_user)
      send_them_back_with_error
      return
    end

    if @home.update(home_params)
      redirect_to @home, notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /homes/1
  def destroy
    @home = Home.find(params[:id])

    unless @home.can_this_user_destroy?(current_user)
      send_them_back_with_error
      return
    end

    @home.destroy
    redirect_to homes_url, notice: 'Home was successfully destroyed.'
  end

  private

  def send_them_back_with_error
    redirect_to homes_path, notice: "You are not allowed"
  end

  # Only allow a trusted parameter "white list" through.
  def home_params
    params.require(:home).permit(:address, :city, :state, :zip, :year_built, :bedrooms, :bathrooms, :square_footage, :price, :description, :parking, :lot_size, :hoa, :hoa_fee, :floors, :image, :roof_type)
  end
end
