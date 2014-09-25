class PrintersController < ApplicationController

  def index
    @printers = Printer.all
  end

  def show
  end

  def new
    @printer = Printer.new
  end

  def edit
  end

  def create
    @printer = Printer.new(printer_params)
  end

end
