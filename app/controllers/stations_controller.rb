class StationsController < ApplicationController
  before_action :set_station, only: [:show, :edit, :destroy, :update]
  before_action :require_admin

  def show
  
  end

  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(station_params)
    @station.save
    if @station.save
      flash[:notice] = "Supply was created successfully."
      redirect_to stations_path
    else
      render 'new'
    end  
  end

  def edit
  
  end

  def update
    @station.update(station_params)
    if @station.update(station_params)
      flash[:message] = "Updated Successfully!"
      redirect_to stations_path
    else
      render 'edit'
    end
  end

  def destroy

  end

end

private

def station_params
  params.require(:station).permit(:name)
end

def set_station
  @station = Station.find(params[:id])
end