class PcsController < ApplicationController
  def new
    @pc = Pc.new
  end

  def create
    @pc = Pc.new(pc_params)
    @pc.cpu_price = 0 if @pc.cpu_price.nil?
    @pc.cpu_cooler_price = 0 if @pc.cpu_cooler_price.nil?
    @pc.memory_price = 0 if @pc.memory_price.nil?
    @pc.videocard_price = 0 if @pc.videocard_price.nil?
    @pc.storage_price = 0 if @pc.storage_price.nil?
    @pc.drive_price = 0 if @pc.drive_price.nil?
    @pc.case_price = 0 if @pc.case_price.nil?
    @pc.motherboard_price = 0 if @pc.motherboard_price.nil?
    @pc.power_price = 0 if @pc.power_price.nil?
    @pc.system_price = 0 if @pc.system_price.nil?
    @pc.fan_price = 0 if @pc.fan_price.nil?
    @pc.other_price = 0 if @pc.other_price.nil?
    @pc.save
    redirect_to pc_path(@pc.id)
  end

  def index
  end

  def show
    @pc = Pc.find(params[:id])
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
