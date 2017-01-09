class Student < ActiveRecord::Base
  has_many :parents
  has_many :student_unities, class_name: 'StudentUnity'
  has_many :unities, through: :student_unities

  validates_presence_of :name, :age, :sex, :registration
  validates_uniqueness_of :registration

  enum sex: { Masculino: 1, Feminino: 2 }
end
