class Classroom < ActiveRecord::Base
  belongs_to :unity
  has_many :studentclasses, class_name: 'StudentClass'
  has_many :students, through: :studentclasses

  paginates_per 5

  enum turn: { Manha: 1, Tarde: 2, Noite: 3 }

  validates_presence_of :name, :turn, :unity_id
end
