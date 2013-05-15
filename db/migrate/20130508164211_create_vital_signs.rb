class CreateVitalSigns < ActiveRecord::Migration
  def change
    create_table :vital_signs do |t|
      t.string :type
      t.integer :val
      t.string :unit
      t.integer :mmlvs_id

      t.timestamps
    end
  end
end
