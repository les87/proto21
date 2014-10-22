class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
  end
  
  def inside
    @calls = Call.all.page(params[:page])
  end

  def resource
  end

  def printer
  end

end
