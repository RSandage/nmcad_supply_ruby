class SuppliesController < ApplicationController
  before_action :set_supply, only: [:show, :edit, :destroy, :update]

  def show

  end

  def index
    @supplies = Supply.all
  end

  def new
    @supply = Supply.new
  end

  def create
    @supply = Supply.new(supply_params)
    @supply.save
    if @supply.save
      flash[:notice] = "Supply was created successfully."
      redirect_to @supply
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    @supply.update(supply_params)
    if @supply.update(supply_params)
      flash[:message] = "Updated Successfully!"
      redirect_to @supply
    else
      render 'edit'
    end
  end

  def destroy
    flash[:message] = "#{@supply.name} was successfully deleted."
    @supply.destroy
    redirect_to supplies_path
  end
end

private

def set_supply
  @supply = Supply.find(params[:id])
end

def supply_params
  params.require(:supply).permit(:name, :amount)
end