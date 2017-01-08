class Unity < ActiveRecord::Base
  belongs_to :school
  has_many :classrooms
  has_many :works, class_name: 'Work'
  has_many :teachers, through: :works

  validates_presence_of :name, :street, :number, :neighborhood, :city, :state, :phone_1, :phone_2, :school_id
end
