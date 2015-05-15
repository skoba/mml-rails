class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.references :prescription, index: true, foreign_key: true
      t.string :name
      t.string :code
      t.decimal :dose
      t.string :dose_unit
      t.integer :frequency
      t.date :start_date
      t.integer :duration
      t.string :instruction
      t.boolean :prn
      t.string :route
      t.string :form
      t.integer :batchNo
      t.boolean :brand_alternative
      t.boolean :long_term

      t.timestamps null: false
    end
  end
end
