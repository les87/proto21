class CallsController < ApplicationController

  def show

  end

  def update

  end

  def edit


  end

  def create
    @call = Call.new(allowed_params)
    @call.save
    if @call.save
      flash[:notice] = 'Call logged!'
      redirect_to inside_url
    end
  end
end

private
def allowed_params
  params.require(:call).permit(:id, :serial_number, :description, :engineer_comment, :status, :logged_by)
end