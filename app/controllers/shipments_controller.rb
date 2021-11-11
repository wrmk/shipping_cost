class ShipmentsController < ApplicationController
  def new
  end

  def create
    shipment = Shipment.new shipping_params
    price = 500 + (shipping_params[:distance].to_f * (shipping_params[:length].to_f + shipping_params[:width].to_f + shipping_params[:height].to_f + shipping_params[:volume].to_f))
    shipment.update(price: price)
    shipment.save
    respond_to do |format|
      format.html { render html: "Price = #{shipment.price}" }
      format.json { render json: shipment.price }
    end
  end

  private
  def shipping_params
    params.permit(:length, :width, :height, :volume, :destination, :departure, :distance)
  end
end
