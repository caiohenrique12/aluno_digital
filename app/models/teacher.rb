class Teacher < ActiveRecord::Base

  validates_presence_of :name, :sex, :phone_1, :phone_2, :registration
end
