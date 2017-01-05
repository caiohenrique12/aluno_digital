class Classroom < ActiveRecord::Base
  belongs_to :unity

  enum turn: { manha: 1, tarde: 2, noite: 3 }

  validates_presence_of :name, :turn, :unity_id
end
