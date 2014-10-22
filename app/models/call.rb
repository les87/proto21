class Call < ActiveRecord::Base

  self.primary_key= :id
  has_many :feedbacks

end