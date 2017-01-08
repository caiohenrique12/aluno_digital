class School < ActiveRecord::Base
  has_many :unities

  validates_presence_of :name, :cnpj
  validates_uniqueness_of :cnpj

  def self.return_info_school
    select('unities.name AS UNIDADE, COUNT(DISTINCT classrooms.id) AS TURMAS, COUNT(DISTINCT works.teacher_id) AS PROFESSORES, COUNT(DISTINCT student_unities.id) AS ALUNOS, COUNT(DISTINCT student_parents.parent_id) AS RESPONSAVEIS').joins('INNER JOIN unities ON schools.id = unities.school_id
    INNER JOIN works ON unities.id = works.unity_id
    INNER JOIN classrooms ON unities.id = classrooms.unity_id
    INNER JOIN student_unities ON unities.id = student_unities.unity_id
    INNER JOIN student_parents ON student_unities.student_id = student_parents.student_id').where('schools.id = 1').group('unities.name')
  end
end
