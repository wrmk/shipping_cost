class ShipmentsController < ApplicationController

  def new
    @top_departures = Shipment.top_departures.first(3)
  end

  def create
    shipment = Shipment.new shipping_params
    price = 500 + (shipping_params[:distance].to_f * (shipping_params[:length].to_f + shipping_params[:width].to_f + shipping_params[:height].to_f + shipping_params[:volume].to_f))
    shipment.update(price: price)
    respond_to do |format|
      if shipment.save
        format.html { render html: "Price = #{shipment.price}" }
        format.json { render json: shipment, only: [:price] }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: shipment.errors, status: :unprocessable_entity }
      end
    end     
  end

  private
  def shipping_params
    params.permit(:length, :width, :height, :volume, :destination, :departure, :distance)
  end
end
