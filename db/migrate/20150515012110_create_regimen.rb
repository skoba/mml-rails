class CreateRegimen < ActiveRecord::Migration
  def change
    create_table :regimen do |t|
      t.references :injection, index: true, foreign_key: true
      t.string :name
      t.string :code
      t.decimal :dose
      t.string :dose_unit
      t.datetime :start_time
      t.datetime :end_time
      t.string :instruction
      t.string :route
      t.string :site
      t.string :delivery_method
      t.integer :batch_no

      t.timestamps null: false
    end
  end
end
