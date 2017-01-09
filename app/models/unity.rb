class Unity < ActiveRecord::Base
  belongs_to :school
  has_many :classrooms
  has_many :works, class_name: 'Work'
  has_many :teachers, through: :works
  has_many :student_unities, class_name: 'StudentUnity'
  has_many :students, through: :student_unities

  paginates_per 5

  validates_presence_of :name, :street, :number, :neighborhood, :city, :state, :phone_1, :phone_2, :school_id
end
