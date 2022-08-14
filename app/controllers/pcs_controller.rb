class PcsController < ApplicationController
  def new
    @pc = Pc.new
  end

  def create
    @pc = Pc.new(pc_params)
    @pc.save
    redirect_to pc_path(@pc.id)
  end

  def index
  end

  def show
  end

  private

  def pc_params
    params.require(:pc).permit(:cpu, :cpu_price, :cpu_cooler, :cpu_cooler_price,\
    :memory, :memory_price, :videocard, :videocard_price, :storage, :storage_price,\
    :drive, :drive_price, :case, :case_price, :motherboard, :motherboard_price,\
    :power, :power_price, :system, :system_price, :fan, :fan_price, :other,\
    :other_price)
  end
end
