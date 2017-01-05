class Unity < ActiveRecord::Base
  belongs_to :school

  validates_presence_of :name, :street, :number, :neighborhood, :city, :state, :phone_1, :phone_2, :school_id
end
