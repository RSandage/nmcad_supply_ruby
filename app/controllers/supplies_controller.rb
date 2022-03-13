class SuppliesController < ApplicationController
  def show
    #byebug
    @supply = Supply.find(params[:id])
  end

  def index
    @supplies = Supply.all
  end
end
