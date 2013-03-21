class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.string :item
      t.float :value
      t.string :unit

      t.timestamps
    end
  end
end
