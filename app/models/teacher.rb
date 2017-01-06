class Teacher < ActiveRecord::Base

  has_many :works
  has_many :unities, through: :works

  validates_presence_of :name, :sex, :phone_1, :phone_2, :registration
  validates_uniqueness_of :registration

  enum sex: { Masculino: 1, Feminino: 2 }
end
