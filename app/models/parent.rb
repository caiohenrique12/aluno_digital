class Parent < ActiveRecord::Base

  validates_presence_of :name, :cpf, :age, :sex, :street, :number, :neighborhood, :city, :state, :phone_1, :phone_2

  enum sex: { masculino: 1, feminino: 2 }
end
