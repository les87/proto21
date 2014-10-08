class Printer < ActiveRecord::Base

belongs_to :call

  # Pagination
  paginates_per 5


  end