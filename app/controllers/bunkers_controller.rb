class BunkersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bunkers = policy_scope(Bunker).order(created_at: :desc)
    @markers = @Bunkers.geocoded.map do |bunker|
      {
        lat: bunker.latitude,
        lng: bunker.longitude
      }
    end
  end

  def show
    @bunker = Bunker.find(params[:id])
    authorize @bunker
  end

  def new
    @bunker = Bunker.new
    authorize @bunker
  end

  def edit
    @bunker = Bunker.find(params[:id])
  end

  def create
    @bunker = Bunker.new(bunker_params)
    authorize @bunker
    @bunker.user_id = current_user.id
    if @bunker.save
      redirect_to bunker_path(@bunker)
    else
      render :new
    end
  end

  def update
    @bunker = Bunker.find(params[:id])
    @bunker.update(bunker_params)
    redirect_to bunker_path(@bunker)
  end

  def destroy
    @bunker = Bunker.find(params[:id])
    @bunker.destroy
    redirect_to bunker_path
  end

  private

  def bunker_params
    params.require(:bunker).permit(:name, :price, :description, :capacity, :address, :photo)
  end
end
