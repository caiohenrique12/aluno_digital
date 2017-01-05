class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.string :cpf
      t.string :age
      t.integer :sex
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :phone_1
      t.string :phone_2
      t.boolean :active

      t.timestamps null: false
    end
  end
end
