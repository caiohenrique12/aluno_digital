class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.integer :sex
      t.string :registration
      t.boolean :active

      t.timestamps null: false
    end
  end
end
