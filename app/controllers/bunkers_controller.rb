class BunkersController < ApplicationController
  def index
    @bunkers = Bunker.all
  end

  def show
    @bunker = Bunker.find(params[:id])
  end

  def new
    @bunker = Bunker.new
  end

  def edit
    @bunker = Bunker.find(params[:id])
  end

  def create
    @bunker = Bunker.new(bunker_params)
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
    params.require(:bunker).permit(:name, :price, :description, :capacity, :address, :photo, :rating)
  end
end
