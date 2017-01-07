class Classroom < ActiveRecord::Base
  belongs_to :unity

  enum turn: { Manha: 1, Tarde: 2, Noite: 3 }

  validates_presence_of :name, :turn, :unity_id
end
