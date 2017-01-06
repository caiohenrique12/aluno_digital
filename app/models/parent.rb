class Parent < ActiveRecord::Base
  has_many :students

  validates_presence_of :name, :cpf, :age, :sex, :street, :number, :neighborhood, :city, :state, :phone_1, :phone_2
  validates_uniqueness_of :cpf

  enum sex: { masculino: 1, feminino: 2 }
end
