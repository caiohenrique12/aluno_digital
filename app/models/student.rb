class Student < ActiveRecord::Base
  has_many :parents
  has_many :studentclasses, class_name: 'StudentClass'
  has_many :classrooms, through: :studentclasses

  validates_presence_of :name, :age, :sex, :registration
  validates_uniqueness_of :registration

  enum sex: { Masculino: 1, Feminino: 2 }
end
