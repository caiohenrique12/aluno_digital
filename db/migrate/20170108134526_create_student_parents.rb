class CreateStudentParents < ActiveRecord::Migration
  def change
    create_table :student_parents do |t|
      t.references :student, index: true, foreign_key: true
      t.references :parent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
