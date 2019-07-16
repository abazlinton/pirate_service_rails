class PiratesRaidsController < ApplicationController
  before_action :set_pirates_raid, only: [:show, :update, :destroy]

  # GET /pirates_raids
  def index
    @pirates_raids = PiratesRaid.all

    render json: @pirates_raids
  end

  # GET /pirates_raids/1
  def show
    render json: @pirates_raid
  end

  # POST /pirates_raids
  def create
    @pirates_raid = PiratesRaid.new(pirates_raid_params)

    if @pirates_raid.save
      render json: @pirates_raid, status: :created, location: @pirates_raid
    else
      render json: @pirates_raid.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pirates_raids/1
  def update
    if @pirates_raid.update(pirates_raid_params)
      render json: @pirates_raid
    else
      render json: @pirates_raid.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pirates_raids/1
  def destroy
    @pirates_raid.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pirates_raid
      @pirates_raid = PiratesRaid.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pirates_raid_params
      params.require(:pirates_raid).permit(:pirate_id, :raid_id)
    end
end
