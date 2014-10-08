class Call < ActiveRecord::Base

  has_many :calls
  has_many :feedbacks

end