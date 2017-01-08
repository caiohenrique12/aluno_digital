class CreateStudentUnities < ActiveRecord::Migration
  def change
    create_table :student_unities do |t|
      t.references :student, index: true, foreign_key: true
      t.references :unity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
