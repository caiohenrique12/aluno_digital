class Student < ActiveRecord::Base
  has_many :parents

  validates_presence_of :name, :age, :sex, :parent_one, :registration
  validates_uniqueness_of :registration

  enum sex: { Masculino: 1, Feminino: 2 }
end
