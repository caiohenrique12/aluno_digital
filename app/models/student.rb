class Student < ActiveRecord::Base
  belongs_to :parent

  validates_presence_of :name, :age, :sex, :parent_id, :registration

  enum sex: { Masculino: 1, Feminino: 2 }
end
