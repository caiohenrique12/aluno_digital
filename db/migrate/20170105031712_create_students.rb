class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :age
      t.integer :sex
      t.references :parent, index: true, foreign_key: true
      t.string :registration
      t.boolean :active

      t.timestamps null: false
    end
  end
end
