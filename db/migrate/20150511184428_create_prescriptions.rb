class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :batch
      t.string :instruction

      t.timestamps null: false
    end
  end
end
