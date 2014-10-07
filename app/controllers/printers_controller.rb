class PrintersController < ApplicationController

  def index
    @printers = Printer.all.page(params[:page])
  end

  def show
  end

  def new
    @printer = Printer.new
  end

  def edit
  end

  def destroy
    @printer = Printer.find(params[:id])
    @printer.destroy
    if @printer.destroy
      flash[:notice] = 'Printer deleted'
      redirect_to setup_path
    end
  end

  def create
    @printer = Printer.new(allowed_params)
    @printer.save
    if @printer.save
      flash[:notice] = 'Printer saved!'
      redirect_to setup_path
  end
end
end

private
def allowed_params
  params.require(:printer).permit(:id, :serial_number, :asset_tag, :model, :printer_name, :printer_location, :ip_address, :page)
end
