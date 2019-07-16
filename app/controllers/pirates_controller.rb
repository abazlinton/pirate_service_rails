require 'pry'

class PiratesController < ApplicationController
  before_action :set_pirate, only: [:show, :update, :destroy]

  # GET /pirates
  def index

    @pirates = Pirate.where(ship_id: params[:ship_id])

    if (request.path == "/pirates")
      render json: @pirates, include: :ship
    else 
      render json: @pirates
    end
  end

  # GET /pirates/1
  def show
    render json: @pirate
  end

  # POST /pirates
  def create
    @pirate = Pirate.new(pirate_params)

    if @pirate.save
      render json: @pirate, status: :created, location: @pirate
    else
      render json: @pirate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pirates/1
  def update
    if @pirate.update(pirate_params)
      render json: @pirate
    else
      render json: @pirate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pirates/1
  def destroy
    @pirate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pirate
      @pirate = Pirate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pirate_params
      params.require(:pirate).permit(:first_name, :last_name, :join_date, :ship_id)
    end
end
