class CartsController < ApplicationController
  def index
    @total_cost = 8191
  end

  def add_to_cart
    @name = params[:name]
    @cost = params[:cost].to_i
    @total_cost = params[:total_cost].to_i
    @dom_id = params[:id]

    respond_to do |format|
      format.turbo_stream
    end
  end

  def remove_from_cart
    @dom_id = params[:dom_id]
    @cost = params[:cost].to_i
    @total_cost = params[:total_cost].to_i

    respond_to do |format|
      format.turbo_stream
    end
  end
end
