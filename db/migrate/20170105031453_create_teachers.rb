class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :sex
      t.string :phone_1
      t.string :phone_2
      t.string :registration
      t.boolean :active

      t.timestamps null: false
    end
  end
end
