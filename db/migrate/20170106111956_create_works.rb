class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :unity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
