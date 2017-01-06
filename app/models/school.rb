class School < ActiveRecord::Base
  has_many :unities

  validates_presence_of :name, :cnpj
  validates_uniqueness_of :cnpj
end
