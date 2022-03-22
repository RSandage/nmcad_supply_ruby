class SuppliesController < ApplicationController
  def show
    #byebug
    @supply = Supply.find(params[:id])
  end

  def index
    @supplies = Supply.all
  end

  def new
    @supply = Supply.new
  end

  def create
    @supply = Supply.new(params.require(:supply).permit(:name, :amount))
    @supply.save
    if @supply.save
      flash[:notice] = "Supply was created successfully."
      redirect_to @supply
    else
      render 'new'
    end
  end

  def edit
    @supply = Supply.find(params[:id])
  end

  def update
    @supply = Supply.find(params[:id])
    @supply.update(params.require(:supply).permit(:name, :amount))
    if @supply.update(params.require(:supply).permit(:name, :amount))
      flash[:message] = "Updated Successfully!"
      redirect_to @supply
    else
      render 'edit'
    end
  end

  def destroy
    @supply = Supply.find(params[:id])
    flash[:message] = "#{@supply.name} was successfully deleted."
    @supply.destroy
    redirect_to supplies_path
  end
end
