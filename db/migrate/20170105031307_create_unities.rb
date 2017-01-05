class CreateUnities < ActiveRecord::Migration
  def change
    create_table :unities do |t|
      t.string :name
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :phone_1
      t.string :phone_2
      t.references :school, index: true, foreign_key: true
      t.boolean :active

      t.timestamps null: false
    end
  end
end
