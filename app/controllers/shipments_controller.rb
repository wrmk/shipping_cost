class ShipmentsController < ApplicationController
  def new
  end

  def create
    Shipment.create shipping_params
  end

  private
  def shipping_params
    params.permit(:length, :width, :height, :volume, :destination, :departure)
  end  
end
